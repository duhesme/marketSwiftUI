//
//  DetailsHeader.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

struct DetailsHeader: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Color("TabBarBackground")
            }
            .frame(width: 37, height: 37)
            Text("Title")
        }
    }
}

struct DetailsHeader_Previews: PreviewProvider {
    static var previews: some View {
        DetailsHeader()
    }
}
