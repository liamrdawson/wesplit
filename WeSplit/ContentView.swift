//
//  ContentView.swift
//  WeSplit
//
//  Created by Liam Dawson on 18/05/2020.
//  Copyright © 2020 Liam Dawson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                // We can set the keyboardType to decimalPad to save users from having to switch to their numberic keypad. We're using decimalPad as we know that users will probably need to enter decimal values to enter an amount of currency.
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }
            Section {
                Text("£\(checkAmount)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
