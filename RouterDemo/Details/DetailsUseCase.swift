//
//  DetailsUseCaseProtocol.swift
//  RouterDemo
//
//  Created by Mohamed Sliem on 15/01/2025.
//


protocol DetailsUseCaseProtocol {
    func fetchDetails(for model: HomeModel) -> DetailsModel
}

class DetailsUseCase: DetailsUseCaseProtocol {
    func fetchDetails(for model: HomeModel) -> DetailsModel {
        return DetailsModel(title: model.title, description: model.description)
    }
}
