//
//  ViewRouter.swift
//  MarketTest
//
//  Created by Никита Владимирович on 08.11.2022.
//

import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: Page = .explorer
    
}

enum Page {
    case explorer
    case cart
    case favourites
    case profile
}
