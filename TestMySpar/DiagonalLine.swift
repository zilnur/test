//
//  DiagonalLine.swift
//  TestMySpar
//
//  Created by Ильнур Закиров on 15.08.2023.
//

import Foundation
import SwiftUI

struct DiagonalLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX * 0.75, y: rect.minY))
        }
    }
}
