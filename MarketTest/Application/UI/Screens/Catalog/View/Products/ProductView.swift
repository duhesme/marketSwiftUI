//
//  ProductView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct ProductView: View {
    @Binding var bestSellers: [BestSellerItem]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(0..<bestSellers.count, id: \.self) { index in
                ProductItemView(imageURL: URL(string: bestSellers[index].picture)!, isFavourite: $bestSellers[index].isFavorites)
            }
        }
        .padding()
    }
}
