//
//  CategoryView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CategoryView: View {
    @State private var categories = ["Phone", "Computer", "Health", "Books"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(0..<categories.count, id: \.self) { index in
                    CategoryItemView(icon: Image(categories[index]))
                        .frame(width: 71, height: 71)
                        .offset(x: 27)
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
