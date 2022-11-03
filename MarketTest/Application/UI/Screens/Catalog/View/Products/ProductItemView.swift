//
//  ProductItemView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 31.10.2022.
//

import SwiftUI

struct LikeButton: View {
    var body: some View {
        ZStack {
            Color.white
            Button {
                
            } label: {
                Image("Heart")
            }
        }
        .frame(width: 25, height: 25)
        .cornerRadius(13)
    }
}

struct ProductItemView: View {
    var body: some View {
        ZStack {
            Color(.displayP3, red: 196, green: 196, blue: 196, opacity: 1)
                .cornerRadius(10)
            VStack {
                ZStack {
                    Image("Question")
                        .resizable()
                        .frame(height: 168)
                    VStack {
                        HStack {
                            Spacer()
                            LikeButton()
                                .padding(.top, 10)
                                .padding(.trailing, 12)
                                .shadow(radius: 13)
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

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView()
    }
}
