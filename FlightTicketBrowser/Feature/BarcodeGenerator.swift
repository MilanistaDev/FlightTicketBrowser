//
//  BarcodeGenerator.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/31.
//

import SwiftUI

final class BarcodeGenerator {
    /// バーコードを生成しUIImage型で返却する
    ///
    /// - Parameter barcodeStr: バーコードを生成したい文字列
    /// - Returns: バーコードをUIImageにしたものを返す
    class func generate(barcodeStr: String) -> UIImage {
        let data = barcodeStr.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        return UIImage()
    }
}
