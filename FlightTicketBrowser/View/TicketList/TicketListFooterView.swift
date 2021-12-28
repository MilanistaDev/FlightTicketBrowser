//
//  TicketListFooterView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/29.
//

import SwiftUI

struct TicketListFooterView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(FlightType.allCases, id: \.self) { type in
                HStack {
                    Image(systemName: "airplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12.0)
                        .foregroundColor(type.themeColor)
                    Text(type.rawValue)
                }
            }
        }
    }
}

struct TicketListFooterView_Previews: PreviewProvider {
    static var previews: some View {
        TicketListFooterView()
            .padding()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
