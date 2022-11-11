//
//  InfoIcon.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

struct InfoIcon: View {
    let image: Image
    let title: String
    
    var body: some View {
        HStack {
            image
            Text(title)
        }
    }
}
