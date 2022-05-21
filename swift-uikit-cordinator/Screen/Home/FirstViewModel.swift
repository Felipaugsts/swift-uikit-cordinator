//
//  FirstViewModel.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import Foundation

class FirstViewModel: Coordinating {
    var cordinator: Cordinator?
    let navigate: navigationProtocol

    init(navigate: navigationProtocol) {
        self.navigate = navigate
    }

    public func navigateToSecondController() {
        navigate.navigateToSecondView()
    }

}
