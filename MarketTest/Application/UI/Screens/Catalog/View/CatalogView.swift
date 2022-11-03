//
//  CatalogView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        ZStack {
            Color(.displayP3, red: 0.898, green: 0.898, blue: 0.898, opacity: 1)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    LocationView()
                    HeaderView(title: "Select Category")
                        .padding(.top, 9)
                    CategoryView()
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
