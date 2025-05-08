//
//  ProductRepository.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

protocol ProductRepositoryProtocol {
    func getUsers() async throws -> ProductEntities
}

class ProductRepository: ProductRepositoryProtocol {
    @Dependency private var userService: ProductServiceProtocol

    func getUsers() async throws -> ProductEntities {
        return try await userService.fetchUsers(method: .GET)
    }
}
