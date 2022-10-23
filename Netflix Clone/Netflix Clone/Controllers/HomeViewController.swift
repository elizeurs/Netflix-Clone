//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 20/10/22.
//

import UIKit

class HomeViewController: UIViewController {
  
  let sectionTitles: [String] = ["Trending Movies", "Popular", "Trending Tv", "Upcoming Movies", "Top Rated"]
  
  private let homeFeedTable: UITableView = {
    // grouped - tableView style the same as apple uses inside settings app.
    let table = UITableView(frame: .zero, style: .grouped)
//    table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
    return table
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
//      view.backgroundColor = .systemRed
      view.backgroundColor = .systemBackground
      view.addSubview(homeFeedTable)
      
      homeFeedTable.delegate = self
      homeFeedTable.dataSource = self
      
      configureNavbar()
      
//      homeFeedTable.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
      let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
      homeFeedTable.tableHeaderView = headerView
    }
  
  private func configureNavbar() {
    var image = UIImage(named: "netflixLogo")
    image = image?.withRenderingMode(.alwaysOriginal)
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)

    navigationItem.rightBarButtonItems = [
      UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
      UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil)
    ]
    navigationController?.navigationBar.tintColor = .white
//    navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    homeFeedTable.frame = view.bounds
  }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return sectionTitles.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//    cell.textLabel?.text = "Hello world"
//    cell.backgroundColor = .systemRed
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
      return UITableViewCell()
    }
    
    return cell
  }
  
  // cell height
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 200
  }
  
  // header height
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 40
  }
  
  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    guard let header = view as? UITableViewHeaderFooterView else { return }
      header.textLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
      header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100, height: header.bounds.height)
    header.textLabel?.textColor = .white
    header.textLabel?.text = header.textLabel?.text?.lowercased()
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sectionTitles[section]
  }
  
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    let defaultOffset = view.safeAreaInsets.top
    let offset = scrollView.contentOffset.y + defaultOffset
    
    navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0, -offset))
  }
}


