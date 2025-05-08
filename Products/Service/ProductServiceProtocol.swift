//
//  ProductServiceProtocol.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import Foundation

protocol ProductServiceProtocol {
    func fetchUsers(method: HTTPMethod) async throws -> ProductEntities
}
