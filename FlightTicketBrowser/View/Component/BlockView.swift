//
//  BlockView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/31.
//

import SwiftUI

struct BlockView: View {
    
    let key: String
    let value: String
    
    var body: some View {
        VStack {
            Text(value)
                .font(.custom("Futura-Medium", size: 17.0, relativeTo: .headline))
            Text(key)
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
        .frame(width: (UIScreen.main.bounds.width - 80) / 3)
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(key: "FLIGHT NUM", value: "JAA777")
    }
}
