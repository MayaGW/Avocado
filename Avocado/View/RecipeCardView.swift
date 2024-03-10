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
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
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
                        .onTapGesture {
                            hapticImpact.impactOccurred()
                            showModel = true
                        }
                        .sheet(isPresented: $showModel, content: {
                            RecipeDetailView(recipe: recipe)
                        })
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
                RatingView(recipe: recipe)
         
                //cooking
                CookingView(recipe: recipe)
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
