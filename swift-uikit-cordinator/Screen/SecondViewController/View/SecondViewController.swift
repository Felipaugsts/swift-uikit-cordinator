//
//  SecondViewController.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import UIKit

class SecondViewController: UIViewController  {    

    public var viewModel: HomePageViewModel?
    let button = Button(size: .medium, title: "Go to page 3", style: .primary)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Second View Controller"
        self.navigationItem.hidesBackButton = true
        
        buttonLayout()
    }

    @objc func didTapButton() {
        viewModel?.navigateToThirdView()
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
