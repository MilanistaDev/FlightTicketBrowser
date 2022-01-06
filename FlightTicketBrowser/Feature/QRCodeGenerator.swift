//
//  QRCodeGenerator.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/06.
//

import SwiftUI

final class QRCodeGenerator {
    /// QRコードを生成しUIImage型の画像として返却する
    ///
    /// - Parameter qrStr: QRコードを生成したい文字列
    /// - Returns: QRコードをUIImageにしたものを返す
    class func generate(qrStr: String) -> UIImage {
        let qrCodeData = qrStr.data(using: .utf8)
        let qrCodeFilter = CIFilter(name: "CIQRCodeGenerator",
                                    parameters: ["inputMessage": qrCodeData!,
                                                 "inputCorrectionLevel": "M"])!
        let sizeTransform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        let qrImage: CIImage = qrCodeFilter.outputImage!.transformed(by: sizeTransform)
        return UIImage(ciImage: qrImage)
    }
}
