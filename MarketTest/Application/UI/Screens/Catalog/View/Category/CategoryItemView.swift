//
//  CategoryItemView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CategoryItemView: View {
    let icon: Image
    
    var body: some View {
        ZStack {
            Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1)
                .cornerRadius(36)
            icon
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(icon: Image("Question"))
    }
}
