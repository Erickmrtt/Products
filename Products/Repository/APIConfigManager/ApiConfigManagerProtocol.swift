//
//  ApiConfigManagerProtocol.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 05/05/25.
//

protocol ApiConfigManagerProtocol {
    func saveApiURL(_ url: String) -> Bool
    func getApiURL() -> String?
    func clearApiURL() -> Bool
}
