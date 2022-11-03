//
//  HeaderView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 01.11.2022.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 28))
            Spacer()
            Button {
                
            } label: {
                Text("view all")
                    .foregroundColor(.orange)
            }
        }
        .padding(.leading, 17)
        .padding(.trailing, 33)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Hot Sales")
    }
}
