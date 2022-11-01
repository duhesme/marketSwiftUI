//
//  ProductView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct ProductView: View {
    @State private var categories = ["1", "2", "3", "4"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(0..<categories.count, id: \.self) { index in
                ProductItemView()
                    .frame(width: 80, height: 80)
            }
        }
        .padding()
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
