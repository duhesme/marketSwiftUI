//
//  NavigationHeader.swift
//  MarketTest
//
//  Created by Никита Владимирович on 11.11.2022.
//

import SwiftUI

struct NavigationHeader: View {
    let title: String
    let forwardIcon: Image
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                ZStack {
                    Asset.Colors.deepBlue.swiftUIColor
                    Asset.Assets.Details.leftArrow.swiftUIImage
                }
                
            }
            .frame(width: 37, height: 37)
            .cornerRadius(10)
            Spacer()
            Text(title)
            Spacer()
            Button {
                
            } label: {
                ZStack {
                    Asset.Colors.orange.swiftUIColor
                    forwardIcon
                }
            }
            .frame(width: 37, height: 37)
            .cornerRadius(10)
        }
    }
}

struct NavigationHeader_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHeader(title: "Title", forwardIcon: Asset.Assets.Details.bag.swiftUIImage)
    }
}
