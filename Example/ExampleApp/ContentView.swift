//
//  ContentView.swift
//  ExampleApp
//
//  Created by Braden Scothern on 1/30/20.
//  Copyright © 2020 Braden Scothern. All rights reserved.
//

import ExamplePackage
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(ExamplePackage.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
