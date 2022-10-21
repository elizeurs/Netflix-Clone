//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 20/10/22.
//

import UIKit

class HomeViewController: UIViewController {
  
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
      
      homeFeedTable.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
    }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    homeFeedTable.frame = view.bounds
  }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 20
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
}


