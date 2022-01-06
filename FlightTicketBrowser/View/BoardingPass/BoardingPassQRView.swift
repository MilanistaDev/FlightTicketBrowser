//
//  BoardingPassQRView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/06.
//

import SwiftUI

struct BoardingPassQRView: View {
    
    let codeStr: String
    
    var body: some View {
        Image(systemName: "qrcode")
            .resizable()
            .scaledToFit()
            .padding(.all, 50.0)
            .background(Color(uiColor: .tertiarySystemBackground))
            .cornerRadius(16.0, corners: [.bottomLeft, .bottomRight])
    }
}

struct BoardingPassQRView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassQRView(codeStr: "0120 345 6789THANKU77")
    }
}
