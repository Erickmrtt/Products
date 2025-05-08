//
//  ProductService.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import Foundation

class ProductService: ProductServiceProtocol {
    private let baseURL = URL(string: "https://dummyjson.com")!

    func fetchUsers(method: HTTPMethod) async throws -> ProductEntities {
        let endpoint = baseURL.appendingPathComponent("/products")
        var request = URLRequest(url: endpoint)
        request.httpMethod = method.rawValue

        let (data, _) = try await URLSession.shared.data(for: request)
        let users = try JSONDecoder().decode(ProductEntities.self, from: data)
        return users
    }
}
