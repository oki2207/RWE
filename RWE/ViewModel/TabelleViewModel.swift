//
//  TabelleViewModel.swift
//  RWE
//
//  Created by Olli on 05.05.23.
//

import Foundation

class TabelleViewModel: ObservableObject {
    @Published var tabelle: [TabelleModel]
    
    
    init() {
        let team1 = TabelleModel(teamName: "Team 1", punkte: 9, tore: 5, gegentore: 3, spiele: 4, platz: 1)
        let team2 = TabelleModel(teamName: "Team 2", punkte: 7, tore: 6, gegentore: 5, spiele: 4, platz: 2)
        let team3 = TabelleModel(teamName: "Team 3", punkte: 7, tore: 4, gegentore: 3, spiele: 4, platz: 3)
        let team4 = TabelleModel(teamName: "Team 4", punkte: 6, tore: 3, gegentore: 2, spiele: 4, platz: 4)
        let team5 = TabelleModel(teamName: "Team 5", punkte: 1, tore: 2, gegentore: 9, spiele: 4, platz: 5)
        let team6 = TabelleModel(teamName: "Team 1", punkte: 9, tore: 5, gegentore: 3, spiele: 4, platz: 1)
        let team7 = TabelleModel(teamName: "Team 2", punkte: 7, tore: 6, gegentore: 5, spiele: 4, platz: 2)
        let team8 = TabelleModel(teamName: "Team 3", punkte: 7, tore: 4, gegentore: 3, spiele: 4, platz: 3)
        let team9 = TabelleModel(teamName: "Team 4", punkte: 6, tore: 3, gegentore: 2, spiele: 4, platz: 4)
        let team10 = TabelleModel(teamName: "Team 5", punkte: 1, tore: 2, gegentore: 9, spiele: 4, platz: 5)
        
        self.tabelle = [team1, team2, team3, team4, team5, team6]
    }
}

