//
//  QRCodeGenerator.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/06.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

final class QRCodeGenerator {
    /// QRコードを生成しData型を返却する(型変換に違和感) (Pattern 1)
    ///
    /// - Parameter qrStr: QRコードを生成したい文字列
    /// - Returns: QRコードをDataにしたものを返す
    class func generate(qrStr: String) -> Data? {
        let qrCodeData = qrStr.data(using: .utf8)
        let qrCodeFilter = CIFilter(name: "CIQRCodeGenerator",
                                    parameters: ["inputMessage": qrCodeData!,
                                                 "inputCorrectionLevel": "M"])!
        let sizeTransform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        let qrImage: CIImage = qrCodeFilter.outputImage!.transformed(by: sizeTransform)
        return UIImage(ciImage: qrImage).pngData()
    }
    
    /// QRコードを生成しUIImageで返却する(Pattern 2)
    /// - Parameter qrStr: QRコードを生成したい文字列
    /// - Returns: 生成されたQRコードの画像
    class func generateNew(qrStr: String) -> UIImage? {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        filter.message = Data(qrStr.utf8)
        guard let outputImage = filter.outputImage,
              let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else {
            return nil
        }
        return UIImage(cgImage: cgImage)
    }
}

