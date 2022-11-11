//
//  StarsView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 09.11.2022.
//

import SwiftUI

struct StarsView: View {
    var body: some View {
        HStack {
            ForEach(0..<5) { _ in
                Star(corners: 5, smoothness: 0.45)
                            .fill(.yellow)
                            .frame(width: 18, height: 18)
                            .background(.clear)
            }
        }
    }
}

struct StarsView_Previews: PreviewProvider {
    static var previews: some View {
        StarsView()
    }
}
