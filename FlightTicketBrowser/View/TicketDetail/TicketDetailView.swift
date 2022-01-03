//
//  TicketDetailView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/29.
//

import SwiftUI

struct TicketDetailView: View {
    
    let ticketInfo: TicketInfo
    @State private var isShowModal = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                TicketDetailTopView(ticketInfo: ticketInfo)
                ZStack {
                    LREdgeCutShapeView()
                        .fill(Color(UIColor.tertiarySystemBackground), style: FillStyle(eoFill: false, antialiased: false))
                        .frame(maxWidth: .infinity)
                        .frame(height: 24.0)
                    LineShape()
                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 1.0, dash: [5]))
                        .frame(height: 1.0)
                        .padding(.horizontal, 20.0)
                }
                TicketDetailMainView(ticketInfo: ticketInfo)
            }
            .padding(.all, 20.0)
        }
        .background(Color(UIColor.systemGroupedBackground))
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Ticket Info")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isShowModal.toggle()
                } label: {
                    VStack(spacing: .zero) {
                        Image(systemName: "qrcode")
                            .resizable()
                            .scaledToFit()
                        Text("PASS")
                            .font(.system(size: 10.0))
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.primary)
                }
            }
        }
        .fullScreenCover(isPresented: $isShowModal) {
            BoardingPassView(ticketInfo: ticketInfo)
        }
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView(ticketInfo: sampleTicketData[0])
    }
}
