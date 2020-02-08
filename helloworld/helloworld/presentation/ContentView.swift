//
//  ContentView.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/5/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = "CLICK THE BUTTON"
    private var controller: ContentViewController
    
    init(controller: ContentViewController) {
        self.controller = controller
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(message)
            Button(action: {
                self.controller.getGreeting().done { res in
                    self.message = res
                }
            }) {
                Text("Hello World")
            }
        }
    }
}
