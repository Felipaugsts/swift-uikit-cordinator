//
//  ViewController.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var cordinator: Cordinator?


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
    }


}

