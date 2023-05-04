//
//  DiagonalBar.swift
//  RWE
//
//  Created by Olli on 04.05.23.
//

import SwiftUI

struct DiagonalBar: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + 230))
        path.addLine(to: CGPoint(x: rect.minX + 70, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}
