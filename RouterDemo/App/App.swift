//
//  App.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//

import UIKit
import Factory

class App { // root
    
    private var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        
        let rootNavigationController = UINavigationController()
        self.window.rootViewController = rootNavigationController
        
        let rootVC = Container.homeServiceDI(navigationController: rootNavigationController)
        rootNavigationController.setViewControllers([rootVC], animated: true)
        
        window.makeKeyAndVisible()
    }
}
