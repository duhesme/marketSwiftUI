//
//  StoreContent.swift
//  MarketTest
//
//  Created by Никита Владимирович on 04.11.2022.
//

import Combine
import Foundation

extension API {
    
    static func storeContent() -> AnyPublisher<StoreContent, Error> {
        let request = URLRequest(url: base.appendingPathComponent("v3/654bd15e-b121-49ba-a588-960956b15175"))
        
        return agent.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
}

struct StoreContent: Decodable {
    let homeStore: [HomeStoreItem]
    let bestSeller: [BestSellerItem]
    
    private enum CodingKeys: String, CodingKey {
        case homeStore = "home_store"
        case bestSeller = "best_seller"
    }
}

struct HomeStoreItem: Decodable {
    let id: Int
    let isNew: Bool?
    let title: String
    let subtitle: String
    let picture: String
    let isBuy: Bool
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case isNew = "is_new"
        case title = "title"
        case subtitle = "subtitle"
        case picture = "picture"
        case isBuy = "is_buy"
    }
}

struct BestSellerItem: Decodable {
    let id: Int
    var isFavorites: Bool
    let title: String
    let priceWithoutDiscount: Int
    let discountPrice: Int
    let picture: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case isFavorites = "is_favorites"
        case title = "title"
        case priceWithoutDiscount = "price_without_discount"
        case discountPrice = "discount_price"
        case picture = "picture"
    }
}

