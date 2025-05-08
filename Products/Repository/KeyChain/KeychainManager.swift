//
//  KeychainManager.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 05/05/25.
//
import SwiftKeychainWrapper

final class KeychainManager: KeychainManagerProtocol {
    func save(string: String, forKey key: String) -> Bool {
        return KeychainWrapper.standard.set(string, forKey: key)
    }
    
    func getString(forKey key: String) -> String? {
        return KeychainWrapper.standard.string(forKey: key)
    }
    
    func remove(forKey key: String) -> Bool {
        return KeychainWrapper.standard.removeObject(forKey: key)
    }
}
