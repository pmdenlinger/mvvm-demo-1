//
//  RecipeModel.swift
//  mvvm-demo-1
//
//  Created by user on 5/15/21.
//

import Foundation

class RecipeModel {
    
    var recipes = [Recipe]()
    
    init() {
        
        // Create some dummy recipe data for initialization of recipes
        
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    
    func addRecipe() {
        recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}
