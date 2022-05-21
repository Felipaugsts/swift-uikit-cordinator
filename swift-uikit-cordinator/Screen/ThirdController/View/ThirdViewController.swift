    //
    //  ThirdViewController.swift
    //  swift-uikit-cordinator
    //
    //  Created by FELIPE AUGUSTO SILVA on 20/05/22.
    //

import UIKit

class ThirdViewController: UIViewController {
    public var viewModel: ThirdViewModel?
    let button = Button(size: .medium, title: "Go to page 1", style: .primary)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        buttonLayout()
        self.navigationItem.hidesBackButton = true
        title = "Third View Controller"
    }

    @objc func didTapButton() {
        viewModel?.navigateToFirstView()
    }

    func buttonLayout() {
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

