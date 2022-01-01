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
    let rows: Int
    
    var body: some View {
        VStack(spacing: 4.0) {
            Text(value)
                .font(.custom("Futura-Medium", size: 17.0, relativeTo: .headline))
            Text(key)
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
        .frame(width: (UIScreen.main.bounds.width - 80) / CGFloat(rows))
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        BlockView(key: "FLIGHT NUM", value: "JAA777", rows: 3)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
