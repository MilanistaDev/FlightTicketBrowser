//
//  BoardingPassView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/03.
//

import SwiftUI

struct BoardingPassView: View {
    
    let ticketInfo: TicketInfo
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    VStack(spacing: .zero) {
                        BoardingPassTopView(ticketInfo: ticketInfo)
                        BoardingPassMainView(ticketInfo: ticketInfo)
                        BoardingPassQRView(codeStr: ticketInfo.eTicketNumber +  ticketInfo.bookingCode)
                    }
                    .padding(.top, 32.0)
                    Text("⚠︎ The boarding start time may change.\n Please come to the gate with plenty of time for a smooth takeoff.")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 20.0)
            }
            .background(Color(UIColor.systemGroupedBackground))
            .navigationTitle("Boarding Pass")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct BoardingPassView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassView(ticketInfo: sampleTicketData[0])
    }
}
