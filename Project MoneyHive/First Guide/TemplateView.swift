//
//  FirstGuideView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct TemplateView: View {
    let Heading: String
    let Subheading: String
    
    var body: some View {
        NavigationView {
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
                CustomButton(title: "Next")
                Spacer()
            }
            .padding()
        }
    }
}

struct CustomButton: View {
    var title: String
    
    var body: some View {
        NavigationLink(destination: IntroductionView()) {
            Text(title)
                .frame(width: 245, height: 60)
                .foregroundColor(.white)
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
    TemplateView(Heading: "Introduction", Subheading: "MoneyHive simplifies financial tracking, budgeting, and investment monitoring, aiding informed decisions.")
}
