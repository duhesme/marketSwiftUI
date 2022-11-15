//
//  ProductDetails.swift
//  MarketTest
//
//  Created by Никита Владимирович on 15.11.2022.
//

import Foundation
import Combine

extension API {
    
    static func productDetails(forId id: Int) -> AnyPublisher<ProductDetails, Error> {
        let request = URLRequest(url: base.appendingPathComponent("v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5"))
        
        return agent.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
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
