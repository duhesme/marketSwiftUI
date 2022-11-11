//
//  MarketTestApp.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

@main
struct MarketTestApp: App {
    
    // iOS can not hook up custom fonts. Have no idea why...
    init(){
        for family in UIFont.familyNames {
             print(family)

             for names in UIFont.fontNames(forFamilyName: family){
             print("== \(names)")
             }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ProductDetailsView()
        }
    }
}

