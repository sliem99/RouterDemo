//
//  HomeRouterProtocol.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//

import UIKit

protocol DetailsRouterProtocol: RouterProtocol {
    func navigateToOutOfBox()
}

class DetailsRouter: DetailsRouterProtocol {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func navigateToOutOfBox() {

    }
}
