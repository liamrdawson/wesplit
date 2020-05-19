//
//  ContentView.swift
//  WeSplit
//
//  Created by Liam Dawson on 18/05/2020.
//  Copyright © 2020 Liam Dawson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // @State is specifically designed for keeping track of simple properties in one view.
    // It's recommended to provide private access control to those properties.
    @State private var name = ""
    
    var body: some View {
        Form {
            // We can use ForEach loops to iterate the same code a set number of times.
            // Because ForEach passes in a closure, we can use short hand syntax with string interpolation to complete the loop.
            ForEach (0 ..< 100) {
                    Text("The number is \($0)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
