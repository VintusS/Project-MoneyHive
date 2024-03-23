//
//  GuideView3.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct GuideView3: View {
    var body: some View {
        TemplateView(Heading: "Budget Planning", Subheading: "Set monthly budgets for different categories and monitor your adherence.", GuideImage: "GuideImage3", ImageSize: [270, 300], ButtonText: "Next", NavigationDestination: {GuideView4()})
            .navigationBarHidden(true)
    }
}

#Preview {
    GuideView3()
}
