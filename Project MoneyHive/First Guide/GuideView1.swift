//
//  IntroductionView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct GuideView1: View {
    var body: some View {
        TemplateView(Heading: "Introduction", Subheading: "MoneyHive simplifies financial tracking, budgeting, and investment monitoring, aiding informed decisions.", GuideImage: "GuideImage1", ImageSize: [353, 300], ButtonText: "Next", NavigationDestination: {GuideView2()})
            .navigationBarHidden(true)
    }
}

#Preview {
    GuideView1()
}
