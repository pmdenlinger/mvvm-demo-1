//
//  RecipeModel.swift
//  mvvm-demo-1
//
//  Created by user on 5/15/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // Get path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            // Create a URL object
            let url = URL(fileURLWithPath: path)
            
            do {
                // Put the code that potentially throws an error
                
                // Create a data object with with the data at the url
                let data = try Data(contentsOf: url )
                
                // Parse the JSON data
                let decoder = JSONDecoder()
                
                do {
                   let recipeData = try decoder.decode([Recipe].self, from: data)
                    self.recipes = recipeData
                    
                    
                    for r in recipeData {
                        // Set unique IDs for each instance
                        r.id = UUID()
                    }
                    
                    // Assign the data to the published property
                }
                
                catch {
                    // Couldn't decode JSON
                    print(error)
                }
                
            }
            catch {
                // Execution will come here if an error is thrown
                // Handle the error
                print(error)
            }
        }
        
        
    }
    
    func addRecipe() {
        
    }
}
