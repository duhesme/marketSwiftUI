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
    @State private var selectedInfoType: DetailsInfoType = .shop
    
    let specs = [
        Spec(title: "Exynos 990", image: Asset.Assets.Details.Specs.processor.swiftUIImage),
        Spec(title: "108 + 12 mp", image: Asset.Assets.Details.Specs.camera.swiftUIImage),
        Spec(title: "8 GB", image: Asset.Assets.Details.Specs.ram.swiftUIImage),
        Spec(title: "256 GB", image: Asset.Assets.Details.Specs.memory.swiftUIImage)
    ]
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
                ProductDetailsHeaderInfo()
                ProductDetailsRating()
                ProductDetailsInfoPicker(selectedInfoType: $selectedInfoType)
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
        .ignoresSafeArea()
    }
}

struct ProductDetailsHeaderInfo: View {
    
    var body: some View {
        HStack {
            Text("Title")
                .font(FontFamily.MarkPro.medium.swiftUIFont(size: 18))
                .foregroundColor(Asset.Colors.deepBlue.swiftUIColor)
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
