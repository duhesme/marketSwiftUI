//
//  DetailsView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack {
            Carousel(elementSize: CGSize(width: 266, height: 335))
            ProductDetailsView()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
