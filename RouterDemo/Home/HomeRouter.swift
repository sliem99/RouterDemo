//
//  HomeRouterProtocol.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


import UIKit
import Factory

protocol HomeRouterProtocol: RouterProtocol {
    func navigateToDetails(with model: HomeModel)
}

class HomeRouter: HomeRouterProtocol {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigateToDetails(with model: HomeModel) {
        let viewController = Container.detailsServiceDI(
            navigationController: navigationController,
            model: model
        )
        navigationController.pushViewController(viewController, animated: true)
    }
}
