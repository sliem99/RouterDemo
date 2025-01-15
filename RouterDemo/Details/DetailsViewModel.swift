//
//  DetailsViewModel.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


protocol DetailsViewModelProtocol {
    func getDetails() -> String
}

class DetailsViewModel: DetailsViewModelProtocol {

    private let model: HomeModel
    
    private var router: DetailsRouterProtocol
    private var usecase: DetailsUseCaseProtocol

    private var description: String?

    init(model: HomeModel, router: DetailsRouterProtocol, usecase: DetailsUseCaseProtocol) {
        self.model = model
        self.router = router
        self.usecase = usecase
    }
    
    func getDetails() -> String {
        usecase.fetchDetails(for: model)
        return description ?? ""
    }
    
}
