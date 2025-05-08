//
//  KeychainManagerProtocol.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 05/05/25.
//

protocol KeychainManagerProtocol {
    func save(string: String, forKey key: String) -> Bool
    func getString(forKey key: String) -> String?
    func remove(forKey key: String) -> Bool
}
