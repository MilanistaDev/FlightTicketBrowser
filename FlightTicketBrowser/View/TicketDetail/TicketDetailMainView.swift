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
        VStack(spacing: 16.0) {
            HStack(spacing: .zero) {
                BlockView(key: "FLIGHT NUM", value: ticketInfo.flightNumber, rows: 3)
                Divider()
                BlockView(key: "TERMINAL", value: ticketInfo.terminal, rows: 3)
                Divider()
                BlockView(key: "GATE", value: ticketInfo.gate, rows: 3)
            }
            Divider()
            HStack(spacing: .zero) {
                BlockView(key: "DATE", value: ticketInfo.date, rows: 3)
                Divider()
                BlockView(key: "DEPARTURE TIME", value: ticketInfo.departureTime, rows: 3)
                Divider()
                BlockView(key: "SEAT", value: ticketInfo.seatNumber, rows: 3)
            }
            Divider()
            HStack(spacing: .zero) {
                BlockView(key: "PASSENGER", value: ticketInfo.passenger, rows: 2)
                Divider()
                BlockView(key: "PASSPORT", value: ticketInfo.passportNumber, rows: 2)
            }
            Divider()
            HStack(spacing: .zero) {
                BlockView(key: "E-TICKET NUM", value: ticketInfo.eTicketNumber, rows: 2)
                Divider()
                BlockView(key: "BOOKING CODE", value: ticketInfo.bookingCode, rows: 2)
            }
            Divider()
            HStack(spacing: .zero) {
                BlockView(key: "PAYMENT METHOD", value: ticketInfo.payment, rows: 2)
                Divider()
                BlockView(key: "PRICE", value: ticketInfo.price, rows: 2)
            }
            // Pattern 1
            Image(uiImage: UIImage(data: BarcodeGenerator.generate(barcodeStr: ticketInfo.eTicketNumber + ticketInfo.bookingCode)!)!)
                .resizable()
                .scaledToFill()
                .frame(height: 24.0)
                .padding(.vertical, 20.0)
        }
        .padding(.horizontal, 20.0)
        .padding(.top, 12.0)
        .padding(.bottom, 20.0)
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
