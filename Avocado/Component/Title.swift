//
//  Title.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct Title: View {
    var title: String
    var body: some View {
        Text(title)
        .modifier(TitleModifier())
    }
}

 
