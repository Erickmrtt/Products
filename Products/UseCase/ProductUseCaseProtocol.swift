//
//  ProductUseCaseProtocol.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//
import Foundation

protocol ProductUseCaseProtocol {
    func execute() async throws -> ProductEntities
}
