//
//  CollectionViewTableViewCell.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 21/10/22.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
  
  static let identifier = "CollectionViewTableViewCell"

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.backgroundColor = .systemPink
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
