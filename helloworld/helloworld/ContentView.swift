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
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(injector.s)
            Button(action: {
                print(self.injector.getGreetingUseCase.execute())
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
