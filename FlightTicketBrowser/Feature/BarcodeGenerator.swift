//
//  BarcodeGenerator.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/31.
//

import SwiftUI

final class BarcodeGenerator {
    /// バーコードを生成しData型で返却する(Pattern 1)
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
    
    /// バーコードを生成しUIImageで返却する(Pattern 2)
    /// - Parameter barcordStr: バーコードを生成したい文字列
    /// - Returns: 生成されたバーコードの画像
    class func generateNew(barcodeStr: String) -> UIImage? {
        let context = CIContext()
        let filter = CIFilter.code128BarcodeGenerator()
        filter.message = Data(barcodeStr.utf8)
        guard let outputImage = filter.outputImage,
              let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else {
            return nil
        }
        return UIImage(cgImage: cgImage)
    }
}
