//
//  ProductItemView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI
import Kingfisher

struct LikeButton: View {
    
    let isFavourite: Bool
    let action: () -> Void
    
    var body: some View {
        ZStack {
            Color.white
            Button {
                action()
            } label: {
                if isFavourite {
                    Image("Heart")
                } else {
                    Image("SelectedHeart")
                }
            }
        }
        .frame(width: 25, height: 25)
        .cornerRadius(13)
    }
}

struct ProductItemView: View {
    let imageURL: URL
    
    @Binding var isFavourite: Bool
    
    var body: some View {
        ZStack {
            Color(.displayP3, red: 196, green: 196, blue: 196, opacity: 1)
                .cornerRadius(10)
                .shadow(color: Color(.displayP3, red: 170/255, green: 182/255, blue: 211/255, opacity: 0.1), radius: 20, x: 2, y: 4)
            VStack {
                ZStack {
                    KFImage(imageURL)
                        .resizable()
                        .frame(height: 168)
                    VStack {
                        HStack {
                            Spacer()
                            LikeButton(isFavourite: isFavourite) {
                                isFavourite.toggle()
                            }
                                .padding(.top, 10)
                                .padding(.trailing, 12)
                                .shadow(color: Color(.displayP3, red: 0, green: 0, blue: 0, opacity: 0.15), radius: 4, x: 2, y: 4)
                        }
                        Spacer()
                            .frame(height: 120)
                    }
                }
                HStack {
                    Text("$1000")
                    Text("$1500")
                        .strikethrough()
                    Spacer()
                }
                .padding(.leading)
                HStack {
                    Text("Samsung")
                        .padding([.leading, .bottom])
                    Spacer()
                }
            }
            .cornerRadius(10)
        }
        
    }
}
