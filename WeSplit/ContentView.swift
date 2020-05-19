//
//  ContentView.swift
//  WeSplit
//
//  Created by Liam Dawson on 18/05/2020.
//  Copyright © 2020 Liam Dawson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // We aren't marking students with @state as its a constant and is therefore not going to change.
    let students = ["Harry", "Ron", "Hermione"]
    // The selectedStudent property starts at index 0, but can change - which is why its marked with @state.
    @State private var selectedStudent = "Harry"
    
    var body: some View {
    // The Picker() has a label, which tells users what it does and also allows something for screen readers to read allowed.
    // The Picker() also has a two way binding of $selectedStudent which means it will start at index 0, however the property and state will be updated as the user moves the picker.
        Picker("Select your student.", selection: $selectedStudent) {
    // We're using a ForEach loop to render a Text() view for each value in the array.
            ForEach(0 ..< students.count) {
                Text(self.students[$0])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
