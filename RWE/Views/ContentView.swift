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
    @StateObject var viewModelkader = KaderViewModel()
    @StateObject var wetterViewModel = WetterViewModel()
    @State private var showSplash = true
    
    //HEADER VIEW
    
    var body: some View {
        
        Group {
            if showSplash {
                Splash()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
                            withAnimation {
                                showSplash = false
                            }
                        }
                    }
            } else {
                
                
                
                
                ZStack {
                    HeaderView()
                    
                }
                
                // NAVIGATIONSBAR
                NavigationView {
                    TabView(selection: $selectedTab) {
                        
                        TabelleView()
                            .environmentObject(TabelleViewModel())
                        
                        
                            .tabItem {
                                Image(systemName: "list.dash")
                                Text("Tabelle")
                            }
                            .tag(2)
                        
                        
                        SpielplanView()
                            .environmentObject(SpielplanViewModel())
                            .environmentObject(NrPokalViewModel())
                        
                            .tabItem {
                                Image(systemName: "calendar")
                                Text("Spielplan")
                            }
                            .tag(1)
                        
                        
                        HomeView()
                            .environmentObject(NextGame())
                            .environmentObject(LastGame())
                            .environmentObject(NewsViewModel())
                            .environmentObject(WetterViewModel())
                        
                        
                            .tabItem {
                                Image("rwetabbar")
                                    .frame(width: 30, height: 30)
                                
                            }
                            .tag(0)
                        
                        
                        KaderView()
                            .environmentObject(KaderViewModel())
                            .environmentObject(AbwehrViewModel())
                            .environmentObject(MitteViewModel())
                            .environmentObject(SturmViewModel())
                            .environmentObject(TrainerViewModel())
                        
                            .tabItem {
                                Image(systemName: "person.3")
                                Text("Team")
                            }
                            .tag(3)
                        
                        
                        TitelView()
                        
                            .tabItem {
                                Image(systemName: "rosette")
                                Text("Erfolge")
                            }
                            .tag(4)
                    }
                }
                
                //NAVIGATIONSBAR FARBE
                
                .onAppear() {
                    UITabBar.appearance().backgroundColor = .white
                    UITabBar.appearance().unselectedItemTintColor = .red
                    wetterViewModel.saveAndReadWetterDaten()
                    
                }
                
                
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                
        }
            
    }
}
