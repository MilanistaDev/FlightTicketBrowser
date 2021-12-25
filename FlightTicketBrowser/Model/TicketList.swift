//
//  TicketList.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/25.
//

import Foundation

// MARK: - TicketList
struct TicketList: Decodable {
    let title: String
    let data: [TicketInfo]
}
