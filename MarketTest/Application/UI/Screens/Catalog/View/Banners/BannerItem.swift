//
//  BannerItem.swift
//  MarketTest
//
//  Created by Никита Владимирович on 02.11.2022.
//

import SwiftUI
import Kingfisher

struct BannerItem: View {
    var imageURL: URL
    
    var body: some View {
        KFImage(imageURL)
            .resizable()
            .cornerRadius(12)
    }
}
