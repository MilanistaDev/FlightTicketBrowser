//
//  TicketListViewModel.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/27.
//

import Foundation

final class TicketListViewModel: ObservableObject {
    
    @Published var ticketList: [TicketInfo] = []
    let fetcher: TicketListFetcher
    
    init() {
        self.fetcher = TicketListFetcher()
    }

    private func fetchTicketList() {
        fetcher.fetch { [weak self] (data) in
            self?.ticketList = data
        }
    }
}
