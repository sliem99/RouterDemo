//
//  HomeViewController.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


import UIKit

class HomeViewController: UIViewController {
    var viewModel: HomeViewModelProtocol!
    
    private var tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchHomeData()
    }
}
