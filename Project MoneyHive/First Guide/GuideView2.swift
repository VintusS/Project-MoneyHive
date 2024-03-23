//
//  GuideView2.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct GuideView2: View {
    var body: some View {
        TemplateView(Heading: "Expense Tracking", Subheading: "Log every expense with details like amount, category, and date.", GuideImage: "GuideImage2", ImageSize: [348, 300], ButtonText: "Next", NavigationDestination: {GuideView3()})
            .navigationBarHidden(true)
    }
}

#Preview {
    GuideView2()
}
