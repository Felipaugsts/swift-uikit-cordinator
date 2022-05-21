//
//  SecondViewController.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import UIKit

class SecondViewController: UIViewController  {    

    public var viewModel: HomePageViewModel?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Second view"
        self.navigationItem.hidesBackButton = true
        
        buttonLayout()
    }

    @objc func didTapButton() {
        viewModel?.navigateToThirdView()
//        cordinator?.eventOccurred(with: .thirdViewController)
    }

    func buttonLayout() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 45))
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        Utilities.styleFilledButton(button, color: .red, title: "Third Controller")
    }

}
