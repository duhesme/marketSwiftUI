//
//  CategoryItemView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct CategoryItemView: View {
    let title: String
    let icon: Image
    @Binding var isSelected: Bool
    
    var body: some View {
        VStack {
            ZStack {
                if isSelected {
                    Color(.displayP3, red: 255/255, green: 110/255, blue: 78/255, opacity: 1)
                        .cornerRadius(36)
                        .frame(width: 71, height: 71)
                } else {
                    Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1)
                        .cornerRadius(36)
                        .frame(width: 71, height: 71)
                }
                    icon
            }
            Text(title)
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(title: "Title", icon: Image("Question"), isSelected: .constant(false))
    }
}
