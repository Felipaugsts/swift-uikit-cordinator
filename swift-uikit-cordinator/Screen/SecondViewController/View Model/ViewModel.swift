//
//  ViewModel.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import Foundation


class HomePageViewModel: Coordinating {
    var cordinator: Cordinator?

    func navigateToThirdView() {
        cordinator?.navigate(to: .thirdViewController)
    }
}
