//
//  DetailsView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI
import Combine

struct DetailsView: View {
    @State private var cancellables = Set<AnyCancellable>()
    
    var body: some View {
        ZStack {
            Asset.Colors.background.swiftUIColor
                .ignoresSafeArea()
            VStack {
                NavigationHeader(title: "Product Details", forwardIcon: Asset.Assets.Details.bag.swiftUIImage)
                    .padding(.leading, 35)
                    .padding(.trailing, 35)
                Carousel(elementSize: CGSize(width: 266, height: 335))
                Spacer()
                ProductDetailsView()
                    .ignoresSafeArea()
            }
        }
        .task {
            loadProductDetails()
        }
    }
    
    private func loadProductDetails() {
        API.productDetails(forId: 3)
            .print()
            .sink(receiveCompletion: { (completion) in
                    switch completion {
                    case let .failure(error):
                        print("Couldn't get store content: \(error)")
                    case .finished: break
                    }
                }) { productDetails in
                    print("Product details: \(productDetails)")
                }.store(in: &cancellables)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
