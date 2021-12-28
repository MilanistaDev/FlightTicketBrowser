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
        Text(ticketInfo.destination)
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView(ticketInfo: sampleTicketData[0])
    }
}
