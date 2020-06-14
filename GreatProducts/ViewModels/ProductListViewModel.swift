//
//  ProductListViewModel.swift
//  GreatProducts
//
//  Created by Rafael Adolfo on 07/06/20.
//  Copyright © 2020 Rafael Adolfo. All rights reserved.
//

import Foundation

protocol ProductListViewModelProtocol {
    //MARK: - Protocol definition
    
    var productList: [Product] {get}
    func addNewProduct()
}

final class ProductListViewModel : ProductListViewModelProtocol, ObservableObject {
    //MARK: - Published properties
    
    @Published var productList: [Product] = []
    
    init() {
        productList.append(Product(description: "iPhone", detail: "iPhone SE 2020", price: 399.90))
        productList.append(Product(description: "Macbook Pro", detail: "Macbook Pro 2020", price: 1299.90))
    }
}

extension ProductListViewModel {
    //MARK: - Functions implementations
    
    func addNewProduct() {
        productList.append(Product())
    }
}
