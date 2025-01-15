//
//  HomeUseCaseProtocol.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


protocol HomeUseCaseProtocol {
    func fetchHomeData() -> [HomeModel]
}

class HomeUseCase: HomeUseCaseProtocol {
    func fetchHomeData() -> [HomeModel] {
        return [
            HomeModel(id: 1, title: "Item 1", description: "Description 1"),
            HomeModel(id: 2, title: "Item 2", description: "Description 2"),
        ]
    }
}
