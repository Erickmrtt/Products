//
//  ProductsViewModelProtocol.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import Foundation

protocol ProductsViewModelProtocol {
    func fetchUsers()
    var products: ProductEntities? { get }
    var errorMessage: String? { get }
}
