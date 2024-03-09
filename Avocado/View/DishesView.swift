//
//  DishesView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            // 1firstColumn
            VStack(alignment: .leading, spacing: 4){
                DishesRowLeft(iconName: "icon-toasts", Title: "Toats")
                Divider()
                DishesRowLeft(iconName: "icon-tacos", Title: "Tacos")
                Divider()
                DishesRowLeft(iconName: "icon-salads", Title: "Salads")
                Divider()
                DishesRowLeft(iconName: "icon-halfavo", Title: "Spreads")
                
            }//VSTACK
            
            //2scnd Column
            VStack (alignment:.center, spacing: 16){
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                HStack {
                    Divider()
                }
            }
            //3 column
            VStack(alignment: .trailing, spacing: 4) {
             DishesRowRight(rightIconName: "icon-guacamole", rightTitle: "Guacamole")
                Divider()
                DishesRowRight(rightIconName: "icon-sandwiches", rightTitle: "Sandwiches")
                Divider()
                DishesRowRight(rightIconName: "icon-soup", rightTitle: "Soup")
                Divider()
                DishesRowRight(rightIconName: "icon-smoothies", rightTitle: "Smoothie")
                
            }
        }//Main Hsatck
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}
struct IconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content.frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
#Preview(traits: .fixedLayout(width: 414, height: 280)) {
    DishesView()
}
