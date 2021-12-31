//
//  TicketDetailMainView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/30.
//

import SwiftUI

struct TicketDetailMainView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        VStack {
            HStack(spacing: .zero) {
                BlockView(key: "FLIGHT NUM", value: ticketInfo.flightNumber)
                Divider()
                BlockView(key: "TERMINAL", value: ticketInfo.terminal)
                Divider()
                BlockView(key: "GATE", value: ticketInfo.gate)
            }
            Divider()
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 12.0)
        .frame(maxWidth: .infinity)
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(12.0, corners: [.bottomLeft, .bottomRight])
    }
}

struct TicketDetailMainView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailMainView(ticketInfo: sampleTicketData[0])
    }
}
