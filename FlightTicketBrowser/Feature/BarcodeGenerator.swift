//
//  BarcodeGenerator.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/31.
//

import SwiftUI

final class BarcodeGenerator {
    /// バーコードを生成しData型で返却する
    ///
    /// - Parameter barcodeStr: バーコードを生成したい文字列
    /// - Returns: バーコードをData型にしたものを返す
    class func generate(barcodeStr: String) -> Data? {
        let data = barcodeStr.data(using: String.Encoding.ascii)
        let barCodeFilter = CIFilter(name: "CICode128BarcodeGenerator",
                                     parameters: ["inputMessage": data!])!
        let transform = CGAffineTransform(scaleX: 3, y: 3)
        let barCodeImage = barCodeFilter.outputImage!.transformed(by: transform)
        return UIImage(ciImage: barCodeImage).pngData()
    }
}
