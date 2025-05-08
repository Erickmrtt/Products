//
//  DependecyContainer.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import Foundation

@propertyWrapper
struct Dependency<T> {
    var wrappedValue: T

    init() {
        self.wrappedValue = DependencyContainer.resolve()
    }
}

final class DependencyContainer {
    private var dependencies = [String: AnyObject]()
    private static var shared = DependencyContainer()

    static func register<T>(_ dependency: T) {
        shared.register(dependency)
    }

    static func resolve<T>() -> T {
        shared.resolve()
    }

    private func register<T>(_ dependency: T) {
        let key = String(describing: T.self)
        dependencies[key] = dependency as AnyObject
    }

    private func resolve<T>() -> T {
        let key = String(describing: T.self)
        let dependency = dependencies[key] as? T

        precondition(dependency != nil, "A seguinte dependência não foi encontrada: \(key)! necessário registrar a mesma na DependencyContainerRegister")

        return dependency!
    }
}
