//
//  ProductViewModel.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//
import Foundation
import Combine

class ProductViewModel: ObservableObject, ProductsViewModelProtocol {
    @Published var products: ProductEntities?
    @Published var errorMessage: String?

    @Dependency private var productUseCaseProtocol: ProductUseCaseProtocol

    func fetchUsers() {
        Task {
            do {
                let products = try await productUseCaseProtocol.execute()
                DispatchQueue.main.async {
                    self.products = products
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
