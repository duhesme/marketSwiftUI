//
//  BannerView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 01.11.2022.
//

import SwiftUI

struct BannerView: View {
    @State private var banners = ["1", "2", "3"]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [GridItem(.fixed(300))], alignment: .center) {
                ForEach(banners, id: \.self) { item in
                    Color.brown
                        .frame(width: 300)
                }
            }
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
