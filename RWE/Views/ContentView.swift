//
//  ContentView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab = 0
    
    
    var body: some View {
        VStack {
            HeaderView()
            
        }
        
        
        TabView(selection: $selectedTab) {
            NavigationView {
                TabelleView()
            }
            .tabItem {
                Image(systemName: "list.dash")
                Text("Tabelle")
            }
            .tag(0)
            
            NavigationView {
                SpielplanView()
            }
            .tabItem {
                Image(systemName: "calendar")
                Text("Spielplan")
            }
            .tag(1)
            
            NavigationView {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
                    .frame(width: 30, height: 30)
                Text("Hafenstrasse")
            }
            .tag(2)
            
            NavigationView {
                KaderView()
            }
            .tabItem {
                Image(systemName: "person.3")
                Text("Team")
            }
            .tag(3)
            
            NavigationView {
                TitelView()
            }
            .tabItem {
                Image(systemName: "rosette")
                Text("Titel")
            }
            .tag(4)
        }
        
        
            
    
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
