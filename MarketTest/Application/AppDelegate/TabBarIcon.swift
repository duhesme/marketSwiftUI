//
//  TabBarIcon.swift
//  MarketTest
//
//  Created by Никита Владимирович on 07.11.2022.
//

import Foundation
import SwiftUI

struct TabBarIcon: View {
    let width, height: CGFloat
    let iconImage: Image
    let tabName: String
    
    var body: some View {
        VStack {
            iconImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
        }
        .padding(.horizontal, -4)
    }
}

struct TabBarIconLong: View {
    let tabName: String
    
    var body: some View {
        HStack {
            Color.white
                .cornerRadius(4)
                .frame(width: 8, height: 8)
            Text(tabName)
                .font(.footnote)
                .foregroundColor(.white)
        }
        .padding(.horizontal, -4)
    }
}

