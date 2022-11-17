//
//  StoragePicker.swift
//  MarketTest
//
//  Created by Никита Владимирович on 16.11.2022.
//

import SwiftUI

struct StoragePicker: View {
    let storage: [String]
    
    @Binding var selectedStorage: String
    
    var body: some View {
        HStack {
            ForEach(storage, id: \.self) { string in
                Button {
                    selectedStorage = string
                } label: {
                    ZStack {
                        if string == selectedStorage {
                            Asset.Colors.orange.swiftUIColor
                            Text("\(string) GB")
                                .font(FontFamily.MarkPro.medium.swiftUIFont(size: 13))
                                .foregroundColor(.white)
                        } else {
                            Color.clear
                            Text("\(string) GB")
                                .font(FontFamily.MarkPro.medium.swiftUIFont(size: 13))
                                .foregroundColor(Asset.Colors.Text.gray.swiftUIColor)
                        }
                        
                    }
                    .cornerRadius(10)
                    .frame(width: 72, height: 31)
                }
            }
        }
    }
}
