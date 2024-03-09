//
//  DishesRowRight.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct DishesRowRight: View {
    var rightIconName: String
    var rightTitle: String
    var body: some View {
        HStack{
            Text(rightTitle)
            Spacer()
            Image(rightIconName)
                .resizable()
                .modifier(IconModifier())
        }
    }
}

 
