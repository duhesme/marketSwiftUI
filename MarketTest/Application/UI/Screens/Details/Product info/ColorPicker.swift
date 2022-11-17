//
//  ColorPicker.swift
//  MarketTest
//
//  Created by Никита Владимирович on 16.11.2022.
//

import SwiftUI

struct ColorPicker: View {
    let colors: [Color]
    
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(0..<colors.count, id: \.self) { index in
                Button {
                    selectedColor = colors[index]
                } label: {
                    ZStack {
                        colors[index]
                        if colors[index] == selectedColor {
                            Asset.Assets.Details.Specs.check.swiftUIImage
                        }
                    }
                    .cornerRadius(20)
                    .frame(width: 40, height: 40)
                }
                
            }
        }
    }
}
