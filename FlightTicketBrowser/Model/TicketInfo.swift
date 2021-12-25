//
//  TicketInfo.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/25.
//

import Foundation

// MARK: - TicketInfo
struct TicketInfo: Decodable {
    let departure: String
    let departureCode: String
    let destination: String
    let destinationCode: String
    let datumOperator: String
    let flightNumber: String
    let terminal: String
    let gate: String
    let date: String
    let boardingTime: String
    let departureTime: String
    let arrivalTime: String
    let journeyTime: String
    let seatNumber: String
    let passenger: String
    let passportNumber: String
    let eTicketNumber: String
    let bookingCode: String
    let payment: String
    let price: String

    enum CodingKeys: String, CodingKey {
        case departure
        case departureCode = "departure_code"
        case destination
        case destinationCode = "destination_code"
        case datumOperator = "operator"
        case flightNumber = "flight_number"
        case terminal
        case gate
        case date
        case boardingTime = "boarding_time"
        case departureTime = "departure_time"
        case arrivalTime = "arrival_time"
        case journeyTime = "journey_time"
        case seatNumber = "seat_number"
        case passenger
        case passportNumber = "passport_number"
        case eTicketNumber = "e_ticket_number"
        case bookingCode = "booking_code"
        case payment
        case price
    }
}
