//
//  ProductListView.swift
//  GreatProducts
//
//  Created by Rafael Adolfo on 07/06/20.
//  Copyright © 2020 Rafael Adolfo. All rights reserved.
//

import SwiftUI

struct ProductListView: View {
    //MARK: - view model
    @ObservedObject var viewModel = ProductListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.productList) { product in
                    NavigationLink(product.description, destination: ProductDetailView(description: product.description, detail: product.detail, price: product.price))
                }
            }
            .navigationBarTitle("Products")
            .navigationBarItems(trailing: Button(action: {
                self.viewModel.addNewProduct()
            }, label: {
                Text("Add new product")
            } ))
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
    }
}
