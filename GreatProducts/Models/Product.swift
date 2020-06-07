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
}

extension Product {
    
    //MARK: - Default initialization
    init() {
        self.description = "New product"
    }
}
