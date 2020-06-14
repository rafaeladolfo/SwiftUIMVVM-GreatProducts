//
//  ProductDetailView.swift
//  GreatProducts
//
//  Created by Rafael Adolfo on 14/06/20.
//  Copyright © 2020 Rafael Adolfo. All rights reserved.
//

import SwiftUI

struct ProductDetailView: View {
    
    let description: String
    let detail: String
    let price: Double
    
    var body: some View {
        List {
            HStack {
                VStack {
                    Text("Description:")
                }
                VStack {
                    Text(description)
                }
            }
            
            HStack {
                VStack {
                    Text("Detail:")
                }
                VStack {
                    Text(detail)
                }
            }
            
            HStack {
                VStack {
                    Text("Price:")
                }
                VStack {
                    Text(String(price))
                }
            }
            
        }
        .navigationBarTitle("Product detail")
    }
}
    
    struct ProductDetailView_Previews: PreviewProvider {
        static var previews: some View {
            ProductDetailView(description: "Example", detail: "Detail", price: 999.99)
        }
}
