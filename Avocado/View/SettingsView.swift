//
//  SettingsView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = true
    @State private var backgroudRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: - HEADER
            
            VStack(alignment: .center, spacing: 5) {
                
                Image(.avocado)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: .colorBlackTransparetLight, radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.colorGreenAdaptive)
            }//VSTACK
            .padding()
            
            
            //MARK: - FORM
            Form{
                //MARK: - SECTION #1
                Section(header: Text("General Settings")){
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable Notification")
                    })
                    Toggle(isOn: $backgroudRefresh, label: {
                        Text("BackgroundRefresh")
                    })
                }
                //MARK: - SECTION #2
                Section(header:Text("Application") ){
                
                    if enableNotification {
                        FormLeftRowComponent(title: "Product", description: "Avocado Recipes")
                        FormLeftRowComponent(title: "Compatibility", description: "Iphone & ipade")
                        FormLeftRowComponent(title: "Developer", description: "Maya")
                        FormLeftRowComponent(title: "Designer", description: "Khaled")
                        FormLeftRowComponent(title: "website", description: "www.boostbyte.com")
                        FormLeftRowComponent(title: "version", description: "1.0.0")
                        
                    } else {
                        FormLeftRowComponent(title: "Personal Message", description: "Happy coding")
                    }
                    
                    
             
                    
                }//SECTION2
            }
        }//Maain VSTACK
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
