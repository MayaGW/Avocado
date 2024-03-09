//
//  AvocadosView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - PROPERTIES
    
    @State private var pulseAnimation: Bool = false
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Image(.avocado)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(.colorBlackTransparentBar), radius: 12, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 8.0)
                .scaleEffect(pulseAnimation ? 1 : 0.9)
                .opacity(pulseAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever())
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                .shadow(color: Color(.colorBlackTransparentBar), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                Text("""
    Creamy, green, and full of nutrients!
     Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
    """)
                .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(.colorGreenLight)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640,maxHeight: 120)
            }//VSTACK
            .padding()

            Spacer()
        }//VSTACK
        .background(
            Image(.background)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                 
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulseAnimation.toggle()
        })
    }
}
//MARK: - PREVIEW
#Preview {
    AvocadosView()
}
