//
//  HeaderView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: - PROPERTIES
    var header: Header
    
    @State private var showHeadline: Bool = false
    var slideAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack(alignment:.top, spacing: 0) {
                Rectangle()
                    .fill(.colorGreenLight)
                    .frame(width: 4)
                
                
                VStack (alignment: .leading, spacing: 6){
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 281, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(.colorBlackTransparetLight)
            }//HSTACK
            .frame(width: 285, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideAnimation)
            .onAppear(perform: {
                showHeadline.toggle()
            })
             
        }//ZSTACK
        .frame(width: 480, height: 320, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView(header: headersData[0])
}
