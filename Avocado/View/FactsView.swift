//
//  FactsView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct FactsView: View {
    //MARK: - Properties
    
    var fact: Fact
    let gradient:[Color] = [.colorGreenMedium,.colorGreenLight  ]
     
    
    var body: some View {
        ZStack{
            
            Text(fact.content)
                .padding(.leading,55)
                .padding(.trailing,10)
                .padding(.vertical,3)
                .frame(width: 300, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .font(.footnote)
                .foregroundColor(.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .background(
                   Circle()
                    .fill(.white)
                    .frame(width: 74, height: 74, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                )
                .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                )
                .background(
                Circle()
                    .fill(Color.colorAppearanceAdaptive)
                    .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                )
                .offset(x: -150)
            
            
        
        }//Zstack Main
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 220)) {
    FactsView(fact: facts[1])
}
