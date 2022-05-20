//
//  Cordinator.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Cordinator {
    var navigationController: UINavigationController?  {get set}

    func eventOccurred(with type: Event)

    func start()
}

protocol Coordinating {
    var cordinator: Cordinator? {get set}

}
