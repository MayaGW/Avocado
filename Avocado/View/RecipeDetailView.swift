//
//  RecipeDetailView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 10/03/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - PROPERTIES
    @State private var pulsate: Bool = false
    var recipe: Recipe
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    var body: some View {
        
        //IMAGE
        ScrollView {
            VStack(alignment: .center, spacing: 0){
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group{
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.colorGreenAdaptive)
                                                .padding(.top, 10)
                  RatingView(recipe: recipe)
                    //COOKING
                    CookingView(recipe: recipe)
                    //INGREDIENTS
                   Title(title: "Ingredients")

                    VStack(alignment: .leading, spacing: 5){
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack (alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                        
                    }//VSTACK
       
                    //INSTRUCTIONS
                    Title(title: "Instruction")
                    ForEach(recipe.instructions, id:\.self){ item in
                        VStack(alignment: .center, spacing: 5){
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(.colorGreenAdaptive)
                            
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                    
                    
                }//GROUP
                .padding(.horizontal,24)
                .padding(.vertical,12)
                
            }//VSTACK
        }//SCROLLVIEW
        .edgesIgnoringSafeArea(.top)
        .overlay(
          HStack {
            Spacer()
            VStack {
              Button(action: {
                // ACTION
                self.presentationMode.wrappedValue.dismiss()
              }, label: {
                Image(systemName: "chevron.down.circle.fill")
                  .font(.title)
                  .foregroundColor(Color.white)
                  .shadow(radius: 4)
                  .opacity(self.pulsate ? 1 : 0.6)
                  .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                  .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
              })
                .padding(.trailing, 20)
                .padding(.top, 24)
              Spacer()
            }
          }
        )
        .onAppear(){
            pulsate.toggle()
        }
    }
}
//MARK: - PREVIEW
#Preview {
    RecipeDetailView(recipe: recipesData[0])
}
