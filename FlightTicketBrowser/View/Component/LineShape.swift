//
//  LineShape.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2022/01/01.
//

import SwiftUI

struct LineShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}
