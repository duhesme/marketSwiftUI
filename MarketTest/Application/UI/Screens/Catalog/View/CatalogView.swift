//
//  CatalogView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CatalogView: View {
    @State private var categories: [CategoryModel] = [
        CategoryModel(id: 0, title: "Phones", imageString: "Phone", isSelected: true),
        CategoryModel(id: 1, title: "Computer", imageString: "Computer", isSelected: false),
        CategoryModel(id: 2, title: "Health", imageString: "Health", isSelected: false),
        CategoryModel(id: 3, title: "Books", imageString: "Books", isSelected: false)
    ]
    
    var body: some View {
        ZStack {
            Color(.displayP3, red: 0.898, green: 0.898, blue: 0.898, opacity: 1)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    LocationView(title: "Location")
                    HeaderView(title: "Select Category")
                        .padding(.top, 9)
                    CategoryView(categories: $categories)
                        .padding(.top, 12)
                    SearchBarView()
                        .padding(.leading, 32)
                        .padding(.trailing, 37)
                        .padding(.top, 17)
                    HeaderView(title: "Hot Sales")
                        .padding(.top, 12)
                    BannerView()
                        .padding(.top, 0)
                    HeaderView(title: "Best Seller")
//                        .padding(.top, 5)
                    ProductView()
//                        .padding(.top, 8)
                }
            }
        }
    }
}


struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
