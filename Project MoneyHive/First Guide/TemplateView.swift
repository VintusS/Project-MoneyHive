//
//  FirstGuideView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct TemplateView<Content: View>: View {
    let Heading: String
    let Subheading: String
    let GuideImage: String
    let ImageSize: [CGFloat]
    let ButtonText: String
    let NavigationDestination: () -> Content
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image(GuideImage)
                    .resizable()
                    .frame(width: ImageSize[0], height: ImageSize[1])
                Spacer()
                Text(Heading)
                    .font(.custom("InriaSans-Bold", size: 35))
                    .padding([.bottom, .top], 10)
                Text(Subheading)
                    .font(.custom("InriaSans-Regular", size: 15))
                    .opacity(0.5)
                    .frame(width: 280)
                    .multilineTextAlignment(.center)
                Spacer()
                CustomButton(title: ButtonText, NavigationDestination: NavigationDestination)
                Spacer()
            }
            .padding()
        }
    }
}

struct CustomButton<Content: View>: View {
    var title: String
    let NavigationDestination: () -> Content
    
    var body: some View {
        NavigationLink(destination: NavigationDestination()) {
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
        .shadow(color: .gray, radius: 4, x: 0, y: 4)
    }
}

#Preview {
    TemplateView(Heading: "Introduction", Subheading: "MoneyHive simplifies financial tracking, budgeting, and investment monitoring, aiding informed decisions.", GuideImage: "GuideImage3",ImageSize: [270, 300], ButtonText: "Next", NavigationDestination: {GuideView1()})
}
