//
//  File.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


import Factory
import UIKit

extension Container {
    
    static func detailsServiceDI(navigationController: UINavigationController, model: HomeModel) -> DetailsViewController {
        let router = self.shared.detailsRouter.resolve(navigationController)
        let usecase = self.shared.detailsUC.resolve()
        
        let viewModel = DetailsViewModel(model: model, router: router, usecase: usecase)
        
        let viewController = self.shared.detailsVC.resolve()
        viewController.viewModel = viewModel
        return viewController
    }
    
    var detailsRouter: ParameterFactory<UINavigationController, DetailsRouterProtocol> {
        ParameterFactory(self) { navController in
            return DetailsRouter(navigationController: navController)
        }
    }
    
    var detailsUC: Factory<DetailsUseCaseProtocol> {
        Factory(self) {
            return DetailsUseCase()
        }
    }
    
    var detailsVC: Factory<DetailsViewController> {
        Factory(self) {
            return DetailsViewController()
        }
    }
}
