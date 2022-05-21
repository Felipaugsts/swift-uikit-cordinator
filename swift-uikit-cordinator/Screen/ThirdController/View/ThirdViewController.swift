//
//  ThirdViewController.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import UIKit

class ThirdViewController: UIViewController, Coordinating {
    var cordinator: Cordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        buttonLayout()
        title = "third view"
    }

    @objc func didTapButton() {
        print("test123")
        cordinator?.eventOccurred(with: .firstViewController)
    }

    func buttonLayout() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        Utilities.styleFilledButton(button, color: .purple, title: "First View Controller")
    }
}

