//
//  NewIncome.swift
//  MoneyHive
//
//  Created by Dragomir Mindrescu on 24.03.2024.
//

import SwiftUI

struct NewIncomeView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("Add Income")
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
    NewIncomeView()
}
