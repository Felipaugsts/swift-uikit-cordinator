//
//  ThirdViewModel.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import Foundation

class ThirdViewModel: Coordinating {
    var cordinator: Cordinator?


        // MARK: Methods
    func navigateToFirstView() {
        cordinator?.eventOccurred(with: .firstViewController)
    }
}
