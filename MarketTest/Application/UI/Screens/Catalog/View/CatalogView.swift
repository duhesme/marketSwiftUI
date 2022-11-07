//
//  CatalogView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI
import Combine

struct CatalogView: View {
    @State private var cancellables = Set<AnyCancellable>()
    
    @State private var categories: [CategoryModel] = [
        CategoryModel(id: 0, title: "Phones", imageString: "Phone", isSelected: true),
        CategoryModel(id: 1, title: "Computer", imageString: "Computer", isSelected: false),
        CategoryModel(id: 2, title: "Health", imageString: "Health", isSelected: false),
        CategoryModel(id: 3, title: "Books", imageString: "Books", isSelected: false)
    ]
    
    @State private var hotSales: [HomeStoreItem] = []
    @State private var bestSellers: [BestSellerItem] = []
    
    var body: some View {
        ZStack {
            Color(.displayP3, red: 0.898, green: 0.898, blue: 0.898, opacity: 1)
                .ignoresSafeArea()
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    LocationView(title: "Location")
                    HeaderView(title: "Select Category")
                        .padding(.top, 4)
                    CategoryView(categories: $categories)
                        .padding(.top, 4)
                    SearchBarView()
                        .frame(height: 34)
                        .padding(.top, 35)
                        .padding(.leading, 32)
                        .padding(.trailing, 37)
                    HeaderView(title: "Hot Sales")
                        .padding(.top, 12)
                    BannerView(hotSales: $hotSales)
                        .padding(.top, -30)
                    HeaderView(title: "Best Seller")
                        .padding(.top, -15)
                    ProductView(bestSellers: $bestSellers)
                        .padding(.top, -20)
                }
            }
        }
        .task {
            loadStoreContent()
        }
    }
    
    private func loadStoreContent() {
        API.storeContent()
            .print()
            .sink(receiveCompletion: { (completion) in
                    switch completion {
                    case let .failure(error):
                        print("Couldn't get store content: \(error)")
                    case .finished: break
                    }
                }) { storeContent in
                    hotSales = storeContent.homeStore
                    bestSellers = storeContent.bestSeller
                }.store(in: &cancellables)
    }
}


struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
