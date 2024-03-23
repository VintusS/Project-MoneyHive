//
//  FirstGuideView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct FirstGuideView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Here's the first lookd")
            Spacer()
            CustomButton(title: "Next") {
                print("test")
            }
        }
        .padding()
    }
}

struct CustomButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(width: 245, height: 60)
                .foregroundStyle(Color.white)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "#04E0FC"), Color(hex: "#007BBC")]),
                        startPoint: UnitPoint(x: 0.25, y: 1),
                        endPoint: UnitPoint.topTrailing
                    )
                )
                .cornerRadius(10)
                .font(.custom("InriaSans-Bold", size: 20))
        }
    }
}

#Preview {
    FirstGuideView()
}
