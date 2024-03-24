//
//  TabBarCurveShape.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 24.03.2024.
//

import SwiftUI

struct TabBarCurveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let curveDepth: CGFloat = 40
        
        path.move(to: CGPoint(x: rect.minX, y: 0))
        
        path.addLine(to: CGPoint(x: rect.midX - curveDepth, y: 0))
        
        path.addArc(center: CGPoint(x: rect.midX, y: 0), radius: curveDepth, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 0), clockwise: true)
        
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        
        return path
    }
}


#Preview {
    TabBarCurveShape()
}
