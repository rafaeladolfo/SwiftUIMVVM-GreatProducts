//
//  ContentView.swift
//  GreatProducts
//
//  Created by Rafael Adolfo on 07/06/20.
//  Copyright © 2020 Rafael Adolfo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private var itemList = [  "iPhone",
                              "iPad",
                              "MacBook Pro",
                              "Macbook Air"  ]
    
    var body: some View {
        List {
            ForEach(self.itemList, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
