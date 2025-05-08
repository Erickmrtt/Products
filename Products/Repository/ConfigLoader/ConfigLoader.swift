//
//  ConfigLoader.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 05/05/25.
//

import Foundation

final class ConfigLoader: ConfigLoaderProtocol {
    func getConfigValue(forKey key: String) -> String? {
        return Bundle.main.object(forInfoDictionaryKey: key) as? String
    }
}
