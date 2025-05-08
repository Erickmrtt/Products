//
//  ProductUseCase.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import Foundation

class ProductUseCase: ProductUseCaseProtocol {
    @Dependency private var userRepository: ProductRepositoryProtocol


    func execute() async throws -> ProductEntities {
        return try await userRepository.getUsers()
    }
}
