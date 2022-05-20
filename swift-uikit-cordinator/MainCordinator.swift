//
//  MainCordinator.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import Foundation
import UIKit

class MainCordinator: Cordinator {
    var navigationController: UINavigationController?

    func eventOccurred(with type: Event) {

    }

    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.cordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
}
