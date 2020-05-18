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
            // By adding a $ before name, we're creating a two way binding, this means that the text field reads the empty string in state and state reads and is updated by the value input to the TextField.
            TextField("Enter your name:", text: $name)
            Text("Your name is: \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
