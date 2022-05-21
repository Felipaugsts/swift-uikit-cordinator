    //
    //  ThirdViewController.swift
    //  swift-uikit-cordinator
    //
    //  Created by FELIPE AUGUSTO SILVA on 20/05/22.
    //

import UIKit

class ThirdViewController: UIViewController {
    public var viewModel: ThirdViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        buttonLayout()
        self.navigationItem.hidesBackButton = true
        title = "third view"
    }

    @objc func didTapButton() {
        viewModel?.navigateToFirstView()
    }

    func buttonLayout() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        Utilities.styleFilledButton(button, color: .purple, title: "Go to First page")
    }
}

