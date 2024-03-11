//
//  FormLeftRowComponent.swift
//  Avocado
//
//  Created by Maya Ghamloush on 11/03/2024.
//

import SwiftUI

struct FormLeftRowComponent: View {
    var title: String
    var description: String
    var body: some View {
        HStack{
            Text(title)
                .foregroundColor(.gray)
            Spacer()
            Text(description)
        }
    }
}

 
