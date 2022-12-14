//
//  CategoryView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CategoryView: View {
    @Binding var categories: [CategoryModel]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(0..<categories.count, id: \.self) { index in
                    CategoryItemView(title: categories[index].title, icon: Image(categories[index].imageString), isSelected: $categories[index].isSelected, action: { updateSelection() })
                        .offset(x: 27)
                        .padding(.trailing, 11)
                }
            }
        }
    }
    
    private func updateSelection() {
        for index in 0..<categories.count {
            categories[index].isSelected = false
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    @State private var categories: [CategoryModel] = []
    
    static var previews: some View {
        CategoryView(categories: .constant([]))
    }
}
