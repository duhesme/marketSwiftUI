//
//  BannerView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 01.11.2022.
//

import SwiftUI

struct BannerView: View {
    @State private var banners = ["1", "2", "3", "4", "5", "6", "7"]
    
    @Binding var hotSales: [HomeStoreItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(220))], alignment: .center) {
                ForEach(0..<hotSales.count, id: \.self) { index in
                    BannerItem(imageURL: URL(string: hotSales[index].picture)!)
                        .frame(width: UIScreen.main.bounds.width - 30, height: 182)
                        .offset(x: 15)
                        .padding(.trailing, 15)
                }
            }
        }
    }
}
