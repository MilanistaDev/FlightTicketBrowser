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
        VStack(spacing: .zero) {
            TicketDetailTopView(ticketInfo: ticketInfo)            
            Spacer()
        }
        .padding(.all, 20.0)
        .background(Color(UIColor.systemGroupedBackground))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView(ticketInfo: sampleTicketData[0])
    }
}
