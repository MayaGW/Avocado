//
//  CookingView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 10/03/2024.
//

import SwiftUI

struct CookingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment:.center, spacing: 12){
            RecipeRow(image: "person.2", title: "Serves: \(recipe.serves)")
            RecipeRow(image: "clock", title: "Prep: \(recipe.preparation)")
            RecipeRow(image: "flame", title: "Cooking: \(recipe.cooking)")
            
        
        }//Hstack
    }
}

 
