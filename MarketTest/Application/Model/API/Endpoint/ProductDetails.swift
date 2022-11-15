//
//  ProductDetails.swift
//  MarketTest
//
//  Created by Никита Владимирович on 15.11.2022.
//

import Foundation
import Combine

extension API {
    
    static func productDetails(forId id: Int) {
        
    }
    
}

struct ProductDetails: Decodable {
    let id: String
    let title: String
    let cpu: String
    let camera: String
    let capacity: [String]
    let color: [String]
    let images: [String]
    let isFavorites: Bool
    let price: Int
    let rating: Double
    let ram: String
    let memory: String
    
    private enum CodingKeys: String, CodingKey {
        case id, title, camera, capacity, color, images, isFavorites, price, rating
        case cpu = "CPU"
        case ram = "sd"
        case memory = "ssd"
    }
}
