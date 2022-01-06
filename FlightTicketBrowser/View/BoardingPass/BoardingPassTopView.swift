//
//  BoardingPassTopView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/05.
//

import SwiftUI

struct BoardingPassTopView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(ticketInfo.departureCode)
                    .font(.custom("Futura-Medium", size: 20.0, relativeTo: .title3))
                Text(ticketInfo.departure)
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
            Spacer()
            VStack {
                Image(systemName: "airplane")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24.0)
                    .padding(.horizontal, 8.0)
                Text(ticketInfo.journeyTime)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .offset(x: .zero, y: 4.0)
            Spacer()
            VStack(alignment: .trailing) {
                Text(ticketInfo.destinationCode)
                    .font(.custom("Futura-Medium", size: 20.0, relativeTo: .title3))
                Text(ticketInfo.destination)
                    .font(.caption2)
                    .fontWeight(.semibold)
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(ticketInfo.flightType.themeColor)
        .cornerRadius(16.0, corners: [.topLeft, .topRight])
    }
}

struct BoardingPassTopView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassTopView(ticketInfo: sampleTicketData[0])
    }
}
