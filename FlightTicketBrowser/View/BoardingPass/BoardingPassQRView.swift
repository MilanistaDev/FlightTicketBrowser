//
//  BoardingPassQRView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/06.
//

import SwiftUI

struct BoardingPassQRView: View {
    
    let codeStr: String
    @State private var isTouched = false
    @State private var brightness = 0.0
    
    var body: some View {
        // Pattern 1
        // Image(uiImage: UIImage(data: QRCodeGenerator.generate(qrStr: codeStr)!)!)
        // Pattern 2 (IMO: Better way)
        Image(uiImage: QRCodeGenerator.generateNew(qrStr: codeStr)!)
            .resizable()
            .interpolation(.none)
            .scaledToFit()
            .padding(.top, 20.0)
            .padding(.bottom, 40.0)
            .padding(.horizontal, 50.0)
            .background(Color(uiColor: .tertiarySystemBackground))
            .cornerRadius(16.0, corners: [.bottomLeft, .bottomRight])
            .onAppear(perform: {
                brightness = UIScreen.main.brightness
            })
            .onDisappear(perform: {
                UIScreen.main.brightness = brightness
            })
            .onTapGesture {
                isTouched.toggle()
                UIScreen.main.brightness = isTouched ? 1.0: brightness
            }
    }
}

struct BoardingPassQRView_Previews: PreviewProvider {
    static var previews: some View {
        BoardingPassQRView(codeStr: "0120 345 6789THANKU77")
    }
}
