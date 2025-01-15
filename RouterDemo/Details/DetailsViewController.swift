//
//  DetailsViewController.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


import UIKit

class DetailsViewController: UIViewController {
    var viewModel: DetailsViewModelProtocol!
    
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    private func bindViewModel() {
        descriptionLabel.text = viewModel.getDetails()
    }
}
