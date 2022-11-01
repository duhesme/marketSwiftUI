//
//  SearchBarView.swift
//  MarketTest
//
//  Created by Никита Владимирович on 01.11.2022.
//

import SwiftUI

struct SearchBarView: View {
    @State private var input: String = ""
    
    var body: some View {
        TextField("search text", text: $input)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
