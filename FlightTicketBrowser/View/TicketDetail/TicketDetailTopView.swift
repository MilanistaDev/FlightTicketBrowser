//
//  TicketDetailTopView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/30.
//

import SwiftUI

struct TicketDetailTopView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(ticketInfo.departureCode)
                    .font(.custom("Futura-Medium", size: 20.0, relativeTo: .title3))
                Text(ticketInfo.departure)
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            Spacer()
            VStack {
                HStack(spacing: .zero) {
                    Circle()
                        .stroke(lineWidth: 2.0)
                        .fill(Color.teal)
                        .frame(width: 6.0, height: 6.0)
                    Rectangle()
                        .fill(Color.teal)
                        .frame(height: 1.0)
                    Image(systemName: "airplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24.0)
                        .foregroundColor(.teal)
                        .padding(.horizontal, 8.0)
                    Rectangle()
                        .fill(Color.teal)
                        .frame(height: 1.0)
                    Circle()
                        .stroke(lineWidth: 2.0)
                        .fill(Color.teal)
                        .frame(width: 6.0, height: 6.0)
                }
                Text(ticketInfo.journeyTime)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .offset(x: .zero, y: 4.0)
            Spacer()
            VStack(alignment: .trailing) {
                Text(ticketInfo.destinationCode)
                    .font(.custom("Futura-Medium", size: 20.0, relativeTo: .title3))
                Text(ticketInfo.destination)
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 20.0)
        .padding(.top, 20.0)
        .padding(.bottom, 8.0)
        .frame(maxWidth: .infinity)
        .background(Color(UIColor.tertiarySystemBackground))
        .cornerRadius(12.0, corners: [.topLeft, .topRight])
    }
}

struct TicketDetailTopView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailTopView(ticketInfo: sampleTicketData[0])
            .frame(height: 80.0)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
