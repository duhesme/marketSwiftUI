//
//  BannerView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 01.11.2022.
//

import SwiftUI

struct BannerView: View {
    @State private var banners = ["1", "2", "3", "4", "5", "6", "7"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(220))], alignment: .center) {
                ForEach(banners, id: \.self) { item in
                    BannerItem()
                        .frame(width: UIScreen.main.bounds.width - 30, height: 182)
                        .offset(x: 15)
                        .padding(.trailing, 15)
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
