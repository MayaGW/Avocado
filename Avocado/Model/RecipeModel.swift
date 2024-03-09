//
//  RecipeModel.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import Foundation
struct Recipe: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
