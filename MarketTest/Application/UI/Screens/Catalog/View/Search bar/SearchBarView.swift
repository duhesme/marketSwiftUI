//
//  SearchBarView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 01.11.2022.
//

import SwiftUI

struct SearchBarView: View {
    @State private var input: String = ""
    
    var body: some View {
        HStack {
            ZStack {
                Color.white
                    .cornerRadius(50)
                HStack {
                    Image("Magnifier")
                        .padding(.leading, 24)
                    TextField("search text", text: $input)
                }
            }
            ZStack {
                Color(.displayP3, red: 255/255, green: 110/255, blue: 78/255, opacity: 1)
                Image("qr-icon")
            }
            .frame(width: 34, height: 34)
            .cornerRadius(17)
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
