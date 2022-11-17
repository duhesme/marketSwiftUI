//
//  ProductDetailsView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

enum DetailsInfoType: String, CaseIterable {
    case shop
    case details
    case features
}

struct Spec {
    let title: String
    let image: Image
}

struct ProductDetailsView: View {
    let productDetails: ProductDetails
    
    @State private var selectedInfoType: DetailsInfoType = .shop
    
    @State var selectedCapacity: String
    @State var selectedColor: Color
    
    let specs = [
        Spec(title: "Exynos 990", image: Asset.Assets.Details.Specs.processor.swiftUIImage),
        Spec(title: "108 + 12 mp", image: Asset.Assets.Details.Specs.camera.swiftUIImage),
        Spec(title: "8 GB", image: Asset.Assets.Details.Specs.ram.swiftUIImage),
        Spec(title: "256 GB", image: Asset.Assets.Details.Specs.memory.swiftUIImage)
    ]
    
    var body: some View {
        ZStack {
            Color.white
            VStack() {
                ProductDetailsHeaderInfo(title: productDetails.title, isFavourite: productDetails.isFavorites)
                ProductDetailsRating()
                    .padding(.top, -10)
                ProductDetailsInfoPicker(selectedInfoType: $selectedInfoType)
                    .padding(.top, 12)
                HStack {
                    ForEach(0..<specs.count, id: \.self) { index in
                        VStack {
                            specs[index].image
                            Text(specs[index].title)
                                .font(FontFamily.MarkPro.regular.swiftUIFont(size: 11))
                                .foregroundColor(Asset.Colors.Text.lightGray.swiftUIColor)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 47)
                    }
                }
                .padding(.top, 12)
                HStack {
                    Text("Select color and capacity")
                        .font(FontFamily.MarkPro.bold.swiftUIFont(size: 14))
                        .foregroundColor(Asset.Colors.deepBlue.swiftUIColor)
                    Spacer()
                }
                .padding(.top, 12)
                HStack {
                    ColorPicker(colors: productDetails.color.map { Color(hex: $0) }, selectedColor: $selectedColor)
                    Spacer()
                    StoragePicker(storage: productDetails.capacity, selectedStorage: $selectedCapacity)
                }
                ProductDetailsBuyButton(price: productDetails.price) {
                    
                }
                .frame(height: 54)
                .padding(.top, 12)
            }
            .padding(.leading, 38)
            .padding(.trailing, 38)
        }
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .ignoresSafeArea()
    }
}

struct ProductDetailsHeaderInfo: View {
    let title: String
    let isFavourite: Bool
    
    var body: some View {
        HStack {
            Text(title)
                .font(FontFamily.MarkPro.medium.swiftUIFont(size: 18))
                .foregroundColor(Asset.Colors.deepBlue.swiftUIColor)
            Spacer()
            ZStack {
                Asset.Colors.deepBlue.swiftUIColor
                if isFavourite {
                    Asset.Assets.Main.Product.selectedHeart.swiftUIImage
                } else {
                    Asset.Assets.Details.transparentHeart.swiftUIImage
                }
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
        HStack {
            ForEach(DetailsInfoType.allCases, id: \.rawValue) { item in
                Button {
                    selectedInfoType = item
                } label: {
                    Group {
                        if item == selectedInfoType {
                            ZStack {
                                Text(item.rawValue.capitalized)
                                    .font(FontFamily.MarkPro.medium.swiftUIFont(size: 20))
                                    .foregroundColor(Asset.Colors.deepBlue.swiftUIColor)
                                VStack {
                                    Spacer()
                                    Asset.Colors.orange.swiftUIColor
                                        .frame(height: 2)
                                }
                            }
                        } else {
                            Text(item.rawValue.capitalized)
                                .font(FontFamily.MarkPro.regular.swiftUIFont(size: 20))
                                .foregroundColor(Color(.displayP3, red: 0, green: 0, blue: 0, opacity: 0.5))
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 30)
                }
                if item != DetailsInfoType.allCases.last {
                    Spacer()
                }
            }
        }
    }
}

struct ProductDetailsBuyButton: View {
    let price: Double
    
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
                    Text("$\(String(format: "%.2f", price))")
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
