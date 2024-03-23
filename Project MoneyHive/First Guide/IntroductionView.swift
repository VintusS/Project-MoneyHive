//
//  FirstGuideView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct IntroductionView: View {
    @State var Heading: String
    @State var Subheading: String
    
    var body: some View {
        VStack {
            Spacer()
            Image("GuideView1")
                .resizable()
                .frame(width: 352.99, height: 300)
            Spacer()
            Text(Heading)
                .font(.custom("InriaSans-Bold", size: 35))
                .padding(.bottom, 10)
            Text(Subheading)
                .font(.custom("InriaSans-Regular", size: 15))
                .opacity(0.5)
                .frame(width: 280)
                .multilineTextAlignment(.center)
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
    IntroductionView(Heading: "Introduction", Subheading: "MoneyHive simplifies financial tracking, budgeting, and investment monitoring, aiding informed decisions.")
}
