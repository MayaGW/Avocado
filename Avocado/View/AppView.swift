//
//  AppView.swift
//  Avocado
//
//  Created by Maya Ghamloush on 09/03/2024.
//

import SwiftUI

struct AppView: View {
    init() {
    UITabBar.appearance().backgroundColor = UIColor(named: "ColorAppearanceAdaptive")
    }
    var body: some View {
        
        TabView{
            AvocadosView()
                .tabItem {
                    Image(.tabiconBranch)
                    Text("Avocados")
            }
            ContentView()
                .tabItem {
                    Image(.tabiconBook)
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image(.tabiconAvocado)
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image(.tabiconSettings)
                    Text("Settings")
                }
        }//TABVIEW
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

#Preview {
    AppView()
}
