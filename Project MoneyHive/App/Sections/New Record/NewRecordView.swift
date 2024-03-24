//
//  NewExpenseView.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 24.03.2024.
//

import SwiftUI

struct NewRecordView: View {
    
    @State private var navigateToNewIncome = false
    @State private var navigateToNewExpense = false
    
    var body: some View {
        VStack {
            NavigationStack{
                Text("New Record")
                    .font(.custom("InriaSans-Bold", size: 20))
                    .padding()
                
                HStack {

                    Button(action: {
                        navigateToNewIncome = true
                    }) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue.opacity(0.4))
                            .frame(height: 100)
                            .overlay(
                                VStack {
                                    Image(systemName: "plus.circle")
                                        .font(.largeTitle)
                                    Text("Add Income")
                                        .font(.custom("InriaSans-Regular", size: 20))
                                }
                                .foregroundColor(.white)
                            )
                    }

                    Spacer()

                    Button(action: {
                        navigateToNewExpense = true
                    }) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red.opacity(0.4))
                            .frame(height: 100)
                            .overlay(
                                VStack {
                                    Image(systemName: "minus.circle")
                                        .font(.largeTitle)
                                    Text("Add Expense")
                                        .font(.custom("InriaSans-Regular", size: 20))
                                }
                                .foregroundColor(.white)
                            )
                    }
                }
                
                Spacer()
                
                HStack {
                    Text("Last records")
                        .font(.custom("InriaSans-Bold", size: 20))
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, -20)
            .navigationBarHidden(false)
            .fullScreenCover(isPresented: $navigateToNewIncome) {
                NewIncomeView()
            }
            .fullScreenCover(isPresented: $navigateToNewExpense) {
                NewExpenseView()
            }
        }
    }
}

#Preview {
    NewRecordView()
}
