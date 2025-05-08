//
//  APIConfigManager.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 05/05/25.
//



final class ApiConfigManager: ApiConfigManagerProtocol {
    @Dependency private var keychainManager: KeychainManagerProtocol
    private let configKey: String
    
    init(
        configKey: String = "apiURL"
    ) {
        self.configKey = configKey
    }
    
    func saveApiURL(_ url: String) -> Bool {
        return keychainManager.save(string: url, forKey: configKey)
    }
    
    func getApiURL() -> String? {
        return keychainManager.getString(forKey: configKey)
    }
    
    func clearApiURL() -> Bool {
        return keychainManager.remove(forKey: configKey)
    }
}
