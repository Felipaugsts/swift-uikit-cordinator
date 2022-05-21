//
//  Cordinator.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import Foundation
import UIKit

enum Event {
    case firstViewController
    case thirdViewController
    case secondViewController
}

protocol Cordinator {
    var navigationController: UINavigationController?  { get set }

    func navigate(to type: Event)

    func start()
}

protocol Coordinating {
    var cordinator: Cordinator? {get set}

}
