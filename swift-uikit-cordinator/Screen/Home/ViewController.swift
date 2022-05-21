//
//  ViewController.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import UIKit

class ViewController: UIViewController {
    var viewModel: FirstViewModel = RickAndMortyContainer.shared.resolve(FirstViewModel.self)!
    var buttonBg: UIColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"

        buttonLayout()
    }

    @objc func didTapButton() {
        viewModel.navigateToSecondController()
    }

    func buttonLayout() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        Utilities.styleFilledButton(button, color: buttonBg, title: "Second Controller")
    }
}

