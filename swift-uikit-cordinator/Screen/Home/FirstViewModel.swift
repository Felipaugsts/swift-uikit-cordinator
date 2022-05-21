//
//  FirstViewModel.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import Foundation


class FirstViewModel: Coordinating {
    var cordinator: Cordinator?

    // MARK: - Methods
    func navigateToSecondController() {
        cordinator?.navigate(to: .secondViewController)
    }

    func navigateToThirdController() {
        cordinator?.navigate(to: .thirdViewController)
    }
}
