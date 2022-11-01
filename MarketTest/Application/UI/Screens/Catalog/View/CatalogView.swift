//
//  CatalogView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        List {
            CategoryView()
            SearchBarView()
            HeaderView(title: "Hot Sales")
            BannerView()
            HeaderView(title: "Best Seller")
            ProductView()
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
