//
//  GuideView4.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct GuideView4: View {
    var body: some View {
        TemplateView(Heading: "Financial Insights", Subheading: "Gain valuable insights into your spending patterns and potential savings.", GuideImage: "GuideImage4", ImageSize: [314, 300], ButtonText: "Let's get started", NavigationDestination: {MainView()})
            .navigationBarHidden(true)
    }
}

#Preview {
    GuideView4()
}
