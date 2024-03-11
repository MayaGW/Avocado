//
//  RipeningView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 10/03/2024.
//

import SwiftUI

struct RipeningView: View {
    var ripening: Ripening
    @State private var slidingAnimatoion: Bool = false
    var body: some View {
        VStack {
            Image(.avocadoRipening1)
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .background(
                Circle()
                    .fill(.colorGreenLight)
                    .frame(width: 110,height: 110, alignment: .center)
                )
                .background(
                Circle()
                    .fill(.colorAppearanceAdaptive)
                    .frame(width: 120,height: 120, alignment: .center)
                )
            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            .animation(.easeInOut(duration: 1))
            .offset(y: slidingAnimatoion ? 55 : -55)
          
            
            VStack(alignment:.center, spacing: 10){
                //STAGE
                VStack(alignment:.center, spacing: 0){
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Stage".uppercased())
                        .font(.system(.body, design: .serif))
                    
                    
                }.foregroundColor(.colorGreenMedium)
                    .padding(.top,65)
                    .frame(width: 180)
                //TITLE
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.colorGreenMedium)
                    .padding(.vertical,12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.white, Color.colorGreenLight]), startPoint: .top, endPoint: .bottom))
                        .shadow(color: .colorBlackTransparetLight, radius: 6, x: 0, y: 6)
                      
                    
                               
                        )
                    
                //DESCRIPTION
                Spacer()
                Text(ripening.description)
                    .foregroundColor(.colorGreenDark)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                //RIPENESS
               Spacer()
                Text(ripening.ripeness)
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal,0)
                    .frame(width: 185)
                    .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.colorGreenMedium, Color.colorGreenDark]), startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .colorBlackTransparetLight, radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                    )
                //INSTRUCTION
                Text(ripening.instruction)
                    .font(.footnote)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.colorGreenLight)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }//vstack
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [.colorGreenLight, Color.colorGreenMedium]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(30)
        }//VSTACK
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear(perform: {
            slidingAnimatoion.toggle()
        })
    }
}

#Preview {
    RipeningView(ripening: ripeningData[0])
}
