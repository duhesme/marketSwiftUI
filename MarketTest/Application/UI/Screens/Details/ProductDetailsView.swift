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
        ZStack {
            Color.white
            VStack {
                ProductDetailsHeaderInfo()
                ProductDetailsRating()
                ProductDetailsInfoPicker(selectedInfoType: $selectedInfoType)
                HStack {
                    ForEach(0..<4) { _ in
                        Color.red
                            .frame(width: 60, height: 47)
                            .cornerRadius(12)
                    }
                }
                HStack {
                    Text("Select color and capacity")
                        .font(FontFamily.MarkPro.bold.swiftUIFont(size: 14))
                        .foregroundColor(Asset.Colors.deepBlue.swiftUIColor)
                    Spacer()
                }
                ProductDetailsBuyButton {
                    
                }
                .frame(height: 54)
            }
            .padding(.leading, 38)
            .padding(.trailing, 38)
        }
        .cornerRadius(30, corners: [.topLeft, .topRight])
    }
}

struct ProductDetailsHeaderInfo: View {
    
    var body: some View {
        HStack {
            Text("Title")
                .font(FontFamily.MarkPro.medium.swiftUIFont(size: 18))
            Spacer()
            ZStack {
                Asset.Colors.deepBlue.swiftUIColor
                Asset.Assets.Details.transparentHeart.swiftUIImage
            }
            .frame(width: 37, height: 33)
            .cornerRadius(10)
        }
    }
}

struct ProductDetailsRating: View {
    var body: some View {
        HStack {
            StarsView()
            Spacer()
        }
    }
}

struct ProductDetailsInfoPicker: View {
    @Binding var selectedInfoType: DetailsInfoType
    
    var body: some View {
        Picker("", selection: $selectedInfoType) {
            Text("Shop")
            Text("Details")
            Text("Features")
        }
        .pickerStyle(.segmented)
    }
}

struct ProductDetailsBuyButton: View {
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                Color("Orange")
                HStack {
                    Text("Add to cart")
                        .font(FontFamily.MarkPro.bold.swiftUIFont(size: 16))
                        .foregroundColor(.white)
                    Spacer()
                    Text("$1500.00")
                        .font(FontFamily.MarkPro.bold.swiftUIFont(size: 16))
                        .foregroundColor(.white)
                }
                .padding(.leading, 45)
                .padding(.trailing, 38)
            }
        }
        .cornerRadius(10)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
    }
}
