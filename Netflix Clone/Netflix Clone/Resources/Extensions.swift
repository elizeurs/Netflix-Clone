//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 24/10/22.
//

import Foundation

extension String {
  func capitalizeFirstLetter() -> String {
    return self.prefix(1).uppercased() + self.lowercased().dropFirst()
  }
}
