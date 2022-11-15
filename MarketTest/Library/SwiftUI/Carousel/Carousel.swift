//
//  Carousel.swift
//  MarketTest
//
//  Created by Никита Владимирович on 10.11.2022.
//

import SwiftUI
import Kingfisher

struct Item: Identifiable {
    var id: Int
    var title: String
    var color: Color
    var imageURL: URL
}

class Store: ObservableObject {
    @Published var items: [Item]
    
    let colors: [Color] = [.red, .orange, .blue, .teal, .mint, .green, .gray, .indigo, .black]
    
    init(imageURLs: [String]) {
        items = []
        for i in 0..<imageURLs.count {
            let new = Item(id: i, title: "Item \(i)", color: colors[i], imageURL: URL(string: imageURLs[i])!)
            items.append(new)
        }
    }
}

struct Carousel: View {
    let elementSize: CGSize
    
    @StateObject var store: Store
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    
    var body: some View {
        
        ZStack {
            ForEach(store.items) { item in
                
                ZStack {
                    KFImage(item.imageURL)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(20)
                }
                .frame(width: elementSize.width, height: elementSize.height)
                
                .scaleEffect(1.0 - abs(distance(item.id)) * 0.2 )
                .opacity(1.0 - abs(distance(item.id)) * 0.3 )
                .offset(x: myXOffset(item.id), y: 0)
                .zIndex(1.0 - abs(distance(item.id)) * 0.1)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { value in
                    draggingItem = snappedItem + value.translation.width / 100
                }
                .onEnded { value in
                    withAnimation {
                        draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                        draggingItem = round(draggingItem).remainder(dividingBy: Double(store.items.count))
                        snappedItem = draggingItem
                    }
                }
        )
    }
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item)).remainder(dividingBy: Double(store.items.count))
    }
    
    func myXOffset(_ item: Int) -> Double {
        let angle = Double.pi * 2 / Double(store.items.count) * distance(item)
        return sin(angle) * 200
    }
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel(elementSize: CGSize(width: 266, height: 335), store: Store(imageURLs: []))
    }
}
