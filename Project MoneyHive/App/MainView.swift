//
//  ContentView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = "Home"
    
    var body: some View {
        VStack {
            Spacer()
            
            switch selectedTab {
            case "Home":
                HomeView()
            case "Overview":
                OverviewView()
            case "Add":
                NewRecordView()
            case "Settings":
                SettingsView()
            case "Profile":
                ProfileView()
            default:
                Text("Selection does not match any tabs")
            }
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
                .padding(.bottom, -20)
        }
        .navigationBarHidden(true)
        .padding()
    }
}

#Preview {
    MainView()
}
