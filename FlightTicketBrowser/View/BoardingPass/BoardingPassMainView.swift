//
//  BoardingPassMainView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/06.
//

import SwiftUI

struct BoardingPassMainView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(spacing: .zero) {
                BlockView(key: "FLIGHT NUM", value: ticketInfo.flightNumber, rows: 2)
                Divider()
                BlockView(key: "BOARDING", value: ticketInfo.boardingTime, rows: 2)
            }
            Divider()
            HStack(spacing: .zero) {
                BlockView(key: "TERMINAL", value: ticketInfo.terminal, rows: 3)
                Divider()
                BlockView(key: "GATE", value: ticketInfo.gate, rows: 3)
                Divider()
                BlockView(key: "SEAT", value: ticketInfo.seatNumber, rows: 3)
            }
        }
        .padding(.top, 20.0)
        .background(Color(uiColor: .tertiarySystemBackground))
    }
}

struct BoardingPassMainView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassMainView(ticketInfo: sampleTicketData[0])
    }
}
