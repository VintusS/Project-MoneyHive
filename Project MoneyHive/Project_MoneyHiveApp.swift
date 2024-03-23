//
//  Project_MoneyHiveApp.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

@main
struct Project_MoneyHiveApp: App {
    var body: some Scene {
        WindowGroup {
            TemplateView(Heading: "Introduction", Subheading: "MoneyHive simplifies financial tracking, budgeting, and investment monitoring, aiding informed decisions.", GuideImage: "GuideImage1", ImageSize: [270, 300], ButtonText: "Next", NavigationDestination: {GuideView1()})
        }
    }
}
