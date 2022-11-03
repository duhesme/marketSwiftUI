//
//  BannerItem.swift
//  MarketTest
//
//  Created by Никита Владимирович on 02.11.2022.
//

import SwiftUI

struct BannerItem: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundColor(.blue)
    }
}

struct BannerItem_Previews: PreviewProvider {
    static var previews: some View {
        BannerItem()
    }
}
