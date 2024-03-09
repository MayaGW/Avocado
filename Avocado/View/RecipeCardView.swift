//
//  RecipeCardView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROERTIES
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                        .shadow(color: .colorBlackTransparetLight, radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                             
                        }//Hstack
                        Spacer()
                    }//VStack
                        .padding()
                )//Overlay
            VStack(alignment: .leading, spacing: 12){
                //title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.colorGreenMedium)
                    .lineLimit(1)
            //headlein
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                //rates
                
                HStack(alignment:.center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                        .foregroundColor(Color.yellow)
                    }
                }
                //cooking
                HStack(alignment:.center, spacing: 12){
                    RecipeRow(image: "person.2", title: "Serves: \(recipe.serves)")
                    RecipeRow(image: "clock", title: "Prep: \(recipe.preparation)")
                    RecipeRow(image: "flame", title: "Cooking: \(recipe.cooking)")
                    
                
                }//Hstack
                .font(.footnote)
                .foregroundColor(.gray)
                
            }//Vstack
            .padding()
            .padding(.bottom,12)
            
            
            
        }//VSTACK
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .colorBlackTransparetLight, radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RecipeCardView(recipe: recipesData[2])
}
