//
//  RecipeRow.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct RecipeRow: View {
    var image: String
    var title: String
    var body: some View {
        HStack(alignment:.center, spacing: 2){
           Image(systemName: image)
            Text(title)
        }//Hstack
    }
}

 
