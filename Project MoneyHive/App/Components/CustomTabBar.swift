//
//  CustomTabBar.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 24.03.2024.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: String
    let yOffset: CGFloat = 20.0
    
    var body: some View {
            HStack {
                
                Spacer()
                
                Button {
                    selectedTab = "Home"
                } label: {
                    VStack {
                        Image(systemName: "house")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Home")
                            .font(.custom("InriaSans-Regular", size: 15))
                    }
                }
                .tint(selectedTab == "Home" ? Color(hex: "#007BBC") : Color.gray)
                
                Spacer()
                
                Button {
                    selectedTab = "Overview"
                } label: {
                    VStack {
                        Image(systemName: "chart.bar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Overview")
                            .font(.custom("InriaSans-Regular", size: 15))
                    }
                }
                .tint(selectedTab == "Overview" ? Color(hex: "#007BBC") : Color.gray)
                Spacer()
                
                Button {
                    withAnimation {
                        selectedTab = "Add"
                    }
                } label: {
                    AddButton()
                }
                .offset(y: -40)
                
                Spacer()
                
                Button {
                    selectedTab = "Settings"
                } label: {
                    VStack {
                        Image(systemName: "gear")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Settings")
                            .font(.custom("InriaSans-Regular", size: 15))
                    }
                }
                .tint(selectedTab == "Settings" ? Color(hex: "#007BBC") : Color.gray)
                
                Spacer()
                
                Button {
                    selectedTab = "Profile"
                } label: {
                    VStack {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Text("Profile")
                            .font(.custom("InriaSans-Regular", size: 15))
                    }
                }
                .tint(selectedTab == "Profile" ? Color(hex: "#007BBC") : Color.gray)
                
                Spacer()
            }
        }
    }

//#Preview {
//    CustomTabBar(selectedTab: "Home")
//}
