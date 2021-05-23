//
//  Recipe.swift
//  mvvm-demo-1
//
//  Created by user on 5/15/21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    
    var id: UUID?
    var name = ""
    var cuisine = ""
    
}
