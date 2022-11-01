//
//  ProductView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct ProductView: View {
    @State private var categories = ["1", "2", "3", "4"]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyVStack {
                ForEach(0..<categories.count, id: \.self) { index in
                    CategoryItemView()
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
