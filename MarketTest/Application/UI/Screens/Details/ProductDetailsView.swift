//
//  ProductDetailsView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

enum DetailsInfoType {
    case shop
    case details
    case features
}

struct ProductDetailsView: View {
    @State private var selectedInfoType: DetailsInfoType = .shop
    
    var body: some View {
        VStack {
            HStack {
                Text("Title")
                Spacer()
                Color("TabBarBackground")
                    .frame(width: 37, height: 33)
            }
            HStack {
                StarsView()
                Spacer()
            }
            Picker("", selection: $selectedInfoType) {
                Text("Shop")
                Text("Details")
                Text("Features")
            }
            .pickerStyle(.segmented)
            HStack {
                ForEach(0..<4) { _ in
                    Color.red
                        .frame(width: 60, height: 47)
                }
            }
            Text("Select color and capacity")
            Button {
                
            } label: {
                ZStack {
                    Color("Orange")
                    HStack {
                        Text("Add to cart")
                        Spacer()
                        Text("$1500.00")
                    }
                    .padding(.leading, 45)
                    .padding(.trailing, 38)
                }
            }
            .frame(height: 54)
            .cornerRadius(10)
        }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}
