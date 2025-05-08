//
//  ProductEntities.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import Foundation

// MARK: - ProductEntities
struct ProductEntities: Codable {
    let products: [Product]?
    let total, skip, limit: Int?
}

// MARK: - Product
struct Product: Codable {
    let id: Int?
    let title, description: String?
    let category: Category?
    let price, discountPercentage, rating: Double?
    let stock: Int?
    let tags: [String]?
    let brand, sku: String?
    let weight: Int?
    let dimensions: Dimensions?
    let warrantyInformation, shippingInformation: String?
    let availabilityStatus: AvailabilityStatus?
    let reviews: [Review]?
    let returnPolicy: ReturnPolicy?
    let minimumOrderQuantity: Int?
    let meta: Meta?
    let images: [String]?
    let thumbnail: String?
}

enum AvailabilityStatus: String, Codable {
    case inStock = "In Stock"
    case lowStock = "Low Stock"
}

enum Category: String, Codable {
    case beauty = "beauty"
    case fragrances = "fragrances"
    case furniture = "furniture"
    case groceries = "groceries"
}

// MARK: - Dimensions
struct Dimensions: Codable {
    let width, height, depth: Double?
}

// MARK: - Meta
struct Meta: Codable {
    let barcode: String?
    let qrCode: String?
}

enum ReturnPolicy: String, Codable {
    case noReturnPolicy = "No return policy"
    case the30DaysReturnPolicy = "30 days return policy"
    case the60DaysReturnPolicy = "60 days return policy"
    case the7DaysReturnPolicy = "7 days return policy"
    case the90DaysReturnPolicy = "90 days return policy"
}

// MARK: - Review
struct Review: Codable {
    let rating: Int?
    let comment: String?
    let reviewerName, reviewerEmail: String?
}
