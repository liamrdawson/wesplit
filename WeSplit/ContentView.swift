//
//  ContentView.swift
//  WeSplit
//
//  Created by Liam Dawson on 18/05/2020.
//  Copyright © 2020 Liam Dawson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    var body: some View {
        Button("Tap Count \(tapCount)") {
            self.tapCount += 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
