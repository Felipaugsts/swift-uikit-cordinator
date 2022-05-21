//
//  MainCordinator.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 19/05/22.
//

import Foundation
import UIKit
import Swinject

class MainCordinator: Cordinator {
    var navigationController: UINavigationController?

    func eventOccurred(with type: Event) {

    }

    func start() {
        let vm: FirstViewModel = RickAndMortyContainer.shared.resolve(FirstViewModel.self)!
        vm.cordinator = self

        let view = ViewController()
        view.viewModel = vm
        let vc: UIViewController = view
        navigationController?.setViewControllers([vc], animated: false)
    }
}

extension MainCordinator: navigationProtocol {

    func navigateToSecondView() {
        let viewModel = HomePageViewModel()
        let view = SecondViewController()

        viewModel.cordinator = self
        view.viewModel = viewModel
        let vc: UIViewController = view
        print("click", vc)
        navigationController?.pushViewController(vc, animated: true)
    }

    func navigateToThirdView() {
        var vc: UIViewController & Coordinating = ThirdViewController()
        vc.cordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }

    func navigateToFirstView() {
        let vm: FirstViewModel = RickAndMortyContainer.shared.resolve(FirstViewModel.self)!
        vm.cordinator = self
        let view = ViewController()
        let vc: UIViewController  = view

        navigationController?.pushViewController(vc, animated: true)
    }

}
