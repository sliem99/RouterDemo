//
//  RouterProtocol.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//

import UIKit

protocol RouterProtocol {
    var navigationController: UINavigationController { get set }
    var presentedVC: UIViewController? { get }
}

extension RouterProtocol {
    unowned var presentedVC: UIViewController? {
        return navigationController.topViewController
    }
}
