//
//  ContentView.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/5/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var injector: Injector
    @State var message: String = "CLICK THE BUTTON"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(message)
            Button(action: {
                self.injector.getGreetingUseCase.execute().done { res in
                    self.message = res.greeting
                }
            }) {
                Text("Hello World")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
