//
//  ContentView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 08/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
           VStack(alignment: .center, spacing: 20){
               
               ScrollView(.horizontal, showsIndicators: false) {
                   HStack (alignment:.top, spacing: 0){
                       HeaderView()
                   }//Header
              }//ScrollView
                
                
                
                //MARK: - Footer
                VStack(alignment: .center, spacing: 20){
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.colorGreenAdaptive)
                        .padding(8)
                    Text("Everything you wanted to know about avocado but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }//VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//vstack
        }//SCROLLVIEWE
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(0)
    }
}

#Preview {
    ContentView()
}
