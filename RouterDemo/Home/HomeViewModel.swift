//
//  HomeViewModelProtocol.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


protocol HomeViewModelProtocol {
    func fetchHomeData()
}

class HomeViewModel: HomeViewModelProtocol {
    private let router: HomeRouterProtocol
    private let useCase: HomeUseCaseProtocol
    var homeData: [HomeModel] = []
        
    init(router: HomeRouterProtocol, useCase: HomeUseCaseProtocol) {
        self.router = router
        self.useCase = useCase
    }
    
    func fetchHomeData() {
        homeData = useCase.fetchHomeData()
        router.navigateToDetails(with: homeData[0])
    }
}
