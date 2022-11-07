//
//  MarketTestApp.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

@main
struct MarketTestApp: App {
    var body: some Scene {
        WindowGroup {
            GeometryReader { geometry in
                ZStack {
                    CatalogView()
                    VStack {
                        Spacer()
                        HStack {
                            TabBarIconLong(tabName: "Explorer")
                            TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, iconImage: Image("Cart"), tabName: "1")
                            TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, iconImage: Image("Favourites"), tabName: "1")
                            TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, iconImage: Image("Profile"), tabName: "1")
                        }
                        .frame(width: geometry.size.width, height: 72)
                        .background(Color("TabBarBackground").shadow(radius: 2))
                        .cornerRadius(UIScreen.main.displayCornerRadius)
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

