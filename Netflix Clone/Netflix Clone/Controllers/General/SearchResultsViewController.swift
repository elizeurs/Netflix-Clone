//
//  SearchResultsViewController.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 27/10/22.
//

import UIKit

class SearchResultsViewController: UIViewController {
  
  // change for "public", 'cause we want to access that from the SearchViewController. it was "private" b4.
  public var titles: [Title] = [Title]()
  
  // change to "public" as well.
  public let searchResultsCollectionView: UICollectionView = {
    
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3-10, height: 200)
    layout.minimumInteritemSpacing = 0
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
    return collectionView
  }()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      view.backgroundColor = .systemBackground
      view.addSubview(searchResultsCollectionView)
      
      searchResultsCollectionView.delegate = self
      searchResultsCollectionView.dataSource = self
    }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    searchResultsCollectionView.frame = view.bounds
  }
}

extension SearchResultsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return titles.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as? TitleCollectionViewCell else {
      return UICollectionViewCell()
    }
    
//    cell.backgroundColor = .systemBlue
    let title = titles[indexPath.row]
    cell.configure(with: title.poster_path ?? "")
    return cell
  }
}

extension SearchViewController: UISearchResultsUpdating {
  func updateSearchResults(for searchController: UISearchController) {
    let searchBar = searchController.searchBar
    
    guard let query = searchBar.text,
    !query.trimmingCharacters(in: .whitespaces).isEmpty,
    query.trimmingCharacters(in: .whitespaces).count >= 3,
    let resultsController = searchController.searchResultsController as? SearchResultsViewController else {
      return
    }
    
    // we didn't have a [weak self], 'cause we're not using "self" over here.
    APICaller.shared.search(with: query) { result in
      DispatchQueue.main.async {
        switch result {
        case .success(let titles):
          resultsController.titles = titles
          resultsController.searchResultsCollectionView.reloadData()
        case .failure(let error):
          print(error.localizedDescription)
        }
      }
    }
  }
}
