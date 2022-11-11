//
//  NavigationHeader.swift
//  MarketTest
//
//  Created by Никита Владимирович on 11.11.2022.
//

import SwiftUI

struct NavigationHeader: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Color.blue
            }
            .frame(width: 37, height: 37)
            Spacer()
            Text("Product Details")
            Spacer()
            Button {
                
            } label: {
                Color.orange
            }
            .frame(width: 37, height: 37)
        }
    }
}

struct NavigationHeader_Previews: PreviewProvider {
    static var previews: some View {
        NavigationHeader()
    }
}
