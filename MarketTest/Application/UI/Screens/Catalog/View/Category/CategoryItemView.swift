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
    
    let action: () -> Void
    
    var body: some View {
        VStack {
            ZStack {
                Button {
                    action()
                    isSelected.toggle()
                } label: {
                    Group {
                        if isSelected {
                            Color(.displayP3, red: 255/255, green: 110/255, blue: 78/255, opacity: 1)
                        } else {
                            Color(.displayP3, red: 1, green: 1, blue: 1, opacity: 1)
                        }
                    }
                }
                .cornerRadius(36)
                .shadow(color: Color(.displayP3, red: 167/255, green: 171/255, blue: 201/255, opacity: 0.15), radius: 4, x: 2, y: 4)
                .frame(width: 71, height: 71)
                
                    icon
            }
            Text(title)
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(title: "Title", icon: Image("Question"), isSelected: .constant(false), action: {})
    }
}
