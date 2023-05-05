//
//  ContentView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedTab = 0
    @StateObject var viewModel = TabelleViewModel()
    
    //HEADER VIEW
    
    var body: some View {
        ZStack {
            HeaderView()
            
        }
        
    // NAVIGATIONSBAR
        
        TabView(selection: $selectedTab) {
            NavigationView {
                TabelleView()
                    .environmentObject(TabelleViewModel())
                    
            }
            .tabItem {
                Image(systemName: "list.dash")
                Text("Tabelle")
            }
            .tag(2)
            
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
                Image("rwetabbar")
                    .frame(width: 30, height: 30)
                
            }
            .tag(0)
            
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
        
        //NAVIGATIONSBAR FARBE
        
        .onAppear() {
              UITabBar.appearance().backgroundColor = .white
              UITabBar.appearance().unselectedItemTintColor = .red
            }
        
    
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                
        }
            
    }
}
