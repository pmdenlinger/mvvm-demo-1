//
//  ContentView.swift
//  mvvm-demo-1
//
//  Created by user on 5/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List(model.recipes) { r in
            
            VStack {
                Text(r.name)
                Text(r.cuisine)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
