//
//  Container.swift
//  swift-uikit-cordinator
//
//  Created by FELIPE AUGUSTO SILVA on 20/05/22.
//

import Foundation
import Swinject

class RickAndMortyContainer {
    public static var shared: Container {
        let container = Container()
        container.register(navigationProtocol.self) { _ in
            return MainCordinator()
        }
        container.register(FirstViewModel.self) { Revolser in
            let vm = FirstViewModel(navigate: Revolser.resolve(navigationProtocol.self)!)
            return vm
        }
 

        return container
    }
}
