//
//  BannerItem.swift
//  MarketTest
//
//  Created by Никита Владимирович on 02.11.2022.
//

import SwiftUI
import Kingfisher

struct BannerItem: View {
    var imageURL: URL
    var isNew: Bool
    var title: String
    var subtitle: String
    
    var body: some View {
        ZStack {
            KFImage(imageURL)
                .resizable()
                .cornerRadius(12)
            HStack {
                VStack {
                    HStack {
                        NewCircle()
                            .frame(width: 27, height: 27)
                        Spacer()
                    }
                    HStack {
                        Text(title)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        Text(subtitle)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        BannerBuyButton(isNew: isNew)
                            .frame(width: 98, height: 23)
                        Spacer()
                    }
                }
                .padding(.leading, 25)
                .padding(.top, 14)
                .padding(.bottom, 25)
                Spacer()
            }
        }
    }
}

struct NewCircle: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.red)
            Text("New")
                .font(.system(size: 8))
                .foregroundColor(.white)
        }
    }
}

struct BannerBuyButton: View {
    let isNew: Bool
    
    var body: some View {
        if !isNew {
            Color.clear
        } else {
            ZStack {
                Button {
                    
                } label: {
                    Color.white
                        .cornerRadius(5)
                }
                Text("Buy now")
                    .font(.system(size: 11))
            }
        }
    }
}
