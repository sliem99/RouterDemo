//
//  HomeDI.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//

import Factory
import UIKit

extension Container {
    
    static func homeServiceDI(navigationController: UINavigationController) -> HomeViewController {
        let router = self.shared.homeRouter.resolve(navigationController)
        let usecase = self.shared.homeUC.resolve()
        
        let viewModel = HomeViewModel(router: router, useCase: usecase)
        
        let viewController = self.shared.homeVC.resolve()
        viewController.viewModel = viewModel
        return viewController
    }
    
    var homeRouter: ParameterFactory<UINavigationController, HomeRouterProtocol> {
        ParameterFactory(self) { navController in
            return HomeRouter(navigationController: navController)
        }
    }
    
    var homeUC: Factory<HomeUseCaseProtocol> {
        Factory(self) {
            return HomeUseCase()
        }
    }
    
    var homeVC: Factory<HomeViewController> {
        Factory(self) {
            return HomeViewController()
        }
    }
}
