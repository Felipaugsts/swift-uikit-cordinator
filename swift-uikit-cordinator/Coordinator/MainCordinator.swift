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

    func start() {
        let vm = FirstViewModel()
        vm.cordinator = self

        let view = ViewController()
        view.viewModel = vm
        let vc: UIViewController = view
        navigationController?.setViewControllers([vc], animated: false)
    }
}

    // MARK: - MainCordinator Extension
extension MainCordinator: navigationProtocol {

    func navigate(to type: Event) {
        switch type {
        case .firstViewController:
            navigateToFirstView()

        case .thirdViewController:
            navigateToThirdView()

        case .secondViewController:
            navigateToSecondView()
        }
    }

    func navigateToFirstView() {
        let viewModel = FirstViewModel()
        let view = ViewController()

        viewModel.cordinator = self
        view.viewModel = viewModel
        let vc: UIViewController = view
        navigationController?.pushViewController(vc, animated: true)
    }

    func navigateToSecondView() {
        let viewModel = HomePageViewModel()
        let view = SecondViewController()

        viewModel.cordinator = self
        view.viewModel = viewModel
        let vc: UIViewController = view
        navigationController?.pushViewController(vc, animated: true)
    }

    func navigateToThirdView() {
        let viewModel = ThirdViewModel()
        let vc = ThirdViewController()

        vc.viewModel = viewModel
        viewModel.cordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }

}
