//
//  NewExpenseView.swift
//  MoneyHive
//
//  Created by Dragomir Mindrescu on 24.03.2024.
//

import SwiftUI

struct NewExpenseView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Add Expense")
                .font(.custom("InriaSans-Bold", size: 20))
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Back")
            }
        }
    }
}

#Preview {
    NewExpenseView()
}
