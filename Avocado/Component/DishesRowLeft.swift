//
//  DishesRowLeft.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct DishesRowLeft: View {
    var iconName: String
    var Title: String
    var body: some View {
        HStack(){
            Image(iconName)
                .resizable()
                .modifier(IconModifier())
            Spacer()
            Text(Title)
            
        }
    }
}

#Preview {
    DishesRowLeft(iconName: "icon-toasts", Title: "Toasts")
}
