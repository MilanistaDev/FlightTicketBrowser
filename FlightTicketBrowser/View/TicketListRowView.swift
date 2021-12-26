//
//  TicketListRowView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/26.
//

import SwiftUI

struct TicketListRowView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        Text(ticketInfo.date)
    }
}

struct TicketListRowView_Previews: PreviewProvider {
    static var previews: some View {
        TicketListRowView(ticketInfo: sampleTicketData[0])
    }
}
