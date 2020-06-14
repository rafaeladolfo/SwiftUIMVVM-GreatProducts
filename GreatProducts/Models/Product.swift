//
//  Product.swift
//  GreatProducts
//
//  Created by Rafael Adolfo on 07/06/20.
//  Copyright © 2020 Rafael Adolfo. All rights reserved.
//

import Foundation

struct Product : Identifiable {
    //MARK: - Properties
    
    var id = UUID()
    var description: String
    var detail: String
    var price: Double
}

extension Product {
    
    //MARK: - Default initialization
    init() {
        self.description = "New product"
        self.detail = "Detailed information"
        self.price = 999.99
    }
}
