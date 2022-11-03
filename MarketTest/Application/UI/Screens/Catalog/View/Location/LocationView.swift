//
//  LocationView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 02.11.2022.
//

import SwiftUI

struct LocationView: View {
    let title: String
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                Image("location")
                Text(title)
                Image("downArrow")
                Spacer()
            }
            HStack {
                Spacer()
                Image("filter")
                    .padding(.trailing, 35)
            }
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(title: "Location")
    }
}
