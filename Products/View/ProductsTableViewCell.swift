//
//  Untitled.swift
//  Products
//
//  Created by Erick Moraes Teixeira on 04/05/25.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {
    static var reuseIdentifier: String  {
        return String(describing: ProductsTableViewCell.self)
    }
    
    let productNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let productPriceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        return label
    }()
        
}

