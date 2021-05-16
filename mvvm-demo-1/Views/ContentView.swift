//
//  ContentView.swift
//  mvvm-demo-1
//
//  Created by user on 5/15/21.
//

import SwiftUI

struct ContentView: View {
    
    var model = RecipeModel()
    
    var body: some View {
        
        List(model.recipes) { r in
            
            VStack(alignment: .leading) {
                Text(r.name)
                    .font(.title)
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
