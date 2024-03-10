//
//  RatingView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 10/03/2024.
//

import SwiftUI

struct RatingView: View {
    var recipe: Recipe
    var body: some View {
      
        HStack(alignment:.center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(Color.yellow)
            }
        }
    }
}
 
