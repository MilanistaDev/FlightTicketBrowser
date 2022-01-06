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
        // It is not displayed for some reason. Maybe bug.
        // Image(uiImage: QRCodeGenerator.generate(qrStr: codeStr))
        Image("qr_boarding_pass")
            .resizable()
            .scaledToFit()
            .padding(.top, 20.0)
            .padding(.bottom, 40.0)
            .padding(.horizontal, 50.0)
            .background(Color(uiColor: .tertiarySystemBackground))
            .cornerRadius(16.0, corners: [.bottomLeft, .bottomRight])
    }
}

struct BoardingPassQRView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassQRView(codeStr: "0120 345 6789THANKU77")
    }
}
