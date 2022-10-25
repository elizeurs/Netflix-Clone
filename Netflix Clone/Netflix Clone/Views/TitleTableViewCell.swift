//
//  TitleTableViewCell.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 25/10/22.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
  
  static let identifier = "TitleTableViewCell"
  
  private let playTitleButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  private let titleLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let titlesPosterUIImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleToFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.addSubview(titlesPosterUIImageView)
    contentView.addSubview(titleLabel)
    contentView.addSubview(playTitleButton)
  }
  
  private func applyConstraints() {
    let titlesPosterUIImageConstraints = [
      titlesPosterUIImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
      titlesPosterUIImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
      titlesPosterUIImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
      titlesPosterUIImageView.widthAnchor.constraint(equalToConstant: 100)
    ]
    
    NSLayoutConstraint.activate(titlesPosterUIImageConstraints)
  }
  
  public func configure(with model: TitleViewModel) {
    guard let url = URL(string: model.posterURL) else {
      return
    }
    titlesPosterUIImageView.sd_setImage(with: url, Completed: nil)
    titleLabel.text = model.titleName
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }

}
