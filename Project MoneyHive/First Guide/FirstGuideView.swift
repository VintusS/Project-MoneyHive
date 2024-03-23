//
//  FirstGuideView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

struct FirstGuideView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Here's the first lookd")
            Spacer()
            CustomButton(title: "Nextg") {
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
                .padding()
                .foregroundStyle(Color.white)
                .background(Color.blue)
                .cornerRadius(10)
                .font(.custom("InriaSans-Regular", size: 20))
        }
        .frame(width: 245)
    }
}

#Preview {
    FirstGuideView()
}
