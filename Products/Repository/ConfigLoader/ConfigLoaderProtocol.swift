//
//  ConfigLoaderProtocol.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 05/05/25.
//

protocol ConfigLoaderProtocol {
    func getConfigValue(forKey key: String) -> String?
}
