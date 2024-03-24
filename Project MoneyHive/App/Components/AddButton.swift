//
//  AddButton.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    gradient: Gradient(colors: [Color(hex: "#007BBC"), Color(hex: "#04E0FC")]),
                    startPoint: UnitPoint(x: 0.5, y: 1),
                    endPoint: UnitPoint.topTrailing
                ))
                .frame(width: 60, height: 60)
                .shadow(color: Color(hex: "#007BBC"), radius: 2, x: 0, y: 3)
            Text("+")
                .font(.custom("InriaSans-Regular", size: 60))
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .padding(.bottom, 5)
        }
    }
}

#Preview {
    AddButton()
}
