//
//  BoardingPassView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/03.
//

import SwiftUI

struct BoardingPassView: View {
    
    let ticketInfo: TicketInfo
    
    var body: some View {
        Text(ticketInfo.price)
    }
}

struct BoardingPassView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassView(ticketInfo: sampleTicketData[0])
    }
}
