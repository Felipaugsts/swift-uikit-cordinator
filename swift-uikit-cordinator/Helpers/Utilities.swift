//
//  Utilities.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import Foundation

import UIKit
enum size {
    case normal
}
class Utilities {
    static func styleFilledButton(_ button:UIButton, color: UIColor, title: String) {
        // Filled rounded corner style
        button.backgroundColor = color
        button.layer.cornerRadius = 20.0
        button.tintColor = UIColor.white
        button.setTitle(title, for: .normal)
    }

    static func styleHollowButton(_ button:UIButton, color: UIColor) {
            // Hollow rounded corner style
        button.layer.borderWidth = 1.3
        button.layer.borderColor = color.cgColor
        button.layer.cornerRadius = 20.0
        button.tintColor = UIColor.black
    }

}
