//
//  TicketDetailView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/29.
//

import SwiftUI

struct TicketDetailView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                TicketDetailTopView(ticketInfo: ticketInfo)
                ZStack {
                    LREdgeCutShapeView()
                        .fill(Color(UIColor.tertiarySystemBackground), style: FillStyle(eoFill: false, antialiased: false))
                        .frame(maxWidth: .infinity)
                        .frame(height: 24.0)
                }
                TicketDetailMainView(ticketInfo: ticketInfo)
            }
            .padding(.all, 20.0)
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Ticket Info")
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView(ticketInfo: sampleTicketData[0])
    }
}
