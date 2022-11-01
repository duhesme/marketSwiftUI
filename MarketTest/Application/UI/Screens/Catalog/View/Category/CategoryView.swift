//
//  CategoryView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CategoryView: View {
    @State private var categories = ["1", "2", "3"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(0..<categories.count, id: \.self) { index in
                    CategoryItemView()
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
