//
//  TicketListView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/26.
//

import SwiftUI

struct TicketListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<sampleTicketData.count) { index in
                    TicketListRowView(ticketInfo: sampleTicketData[index])
                }
            }
            .navigationTitle("Ticket List")
        }
    }
}

struct TicketListView_Previews: PreviewProvider {
    static var previews: some View {
        TicketListView()
    }
}
