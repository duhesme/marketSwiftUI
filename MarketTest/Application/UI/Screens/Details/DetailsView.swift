//
//  DetailsView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ZStack {
            Asset.Colors.background.swiftUIColor
                .ignoresSafeArea()
            VStack {
                NavigationHeader(title: "Product Details", forwardIcon: Asset.Assets.Details.bag.swiftUIImage)
                    .padding(.leading, 35)
                    .padding(.trailing, 35)
                Carousel(elementSize: CGSize(width: 266, height: 335))
                Spacer()
                ProductDetailsView()
                    .ignoresSafeArea()
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
