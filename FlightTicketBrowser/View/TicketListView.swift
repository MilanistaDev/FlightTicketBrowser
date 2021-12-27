//
//  TicketListView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/26.
//

import SwiftUI

struct TicketListView: View {
    
    @StateObject private var viewModel = TicketListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.ticketList.indices, id: \.self) { index in
                    NavigationLink(destination: Text("Ticket detail")) {
                        TicketListRowView(ticketInfo: viewModel.ticketList[index])
                    }
                }
            }
            .navigationTitle("Ticket List")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            viewModel.fetchTicketList()
        }
    }
}

struct TicketListView_Previews: PreviewProvider {
    static var previews: some View {
        TicketListView()
    }
}
