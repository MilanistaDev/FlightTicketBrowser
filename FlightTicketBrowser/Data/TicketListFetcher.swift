//
//  TicketListFetcher.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/27.
//

import Foundation

final class TicketListFetcher {

    /// Fetch ticket list data from local JSON
    /// - Parameter completion: TicketList
    func fetch(completion: @escaping ([TicketInfo]) -> Void) {

        guard let path = Bundle.main.path(forResource: "TicketList", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let ticketListData = try JSONDecoder().decode(TicketList.self, from: data)
            DispatchQueue.main.async {
                completion(ticketListData.data)
            }
        } catch {
            print("json convert failed in JSONDecoder.")
        }
    }
}
