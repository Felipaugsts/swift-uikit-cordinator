//
//  ViewController.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Variables
    public var viewModel: FirstViewModel?
    let secondButton = Button(size: .medium, title: "Go to page 3", style: .primary)
    let button  = Button(size: .medium, title: "Go to page 2", style: .secondary)


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.hidesBackButton = true
        title = "Home"

        buttonLayout()
        buttonConstraints()

    }

    //MARK: - Methods

    @objc func wantToNavigateToSecondView() {
        viewModel?.navigateToSecondController()
    }
    @objc func wantToNavigateToThirdView() {
        viewModel?.navigateToThirdController()
    }

        // MARK: - Button layout
    func buttonLayout() {

        button.addTarget(self, action: #selector(wantToNavigateToSecondView), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(wantToNavigateToThirdView), for: .touchUpInside)
    }
    func buttonConstraints() {
        view.addSubview(button)
        view.addSubview(secondButton)

        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            secondButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            secondButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
    }
    
}

