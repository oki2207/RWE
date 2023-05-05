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
        let team1 = TabelleModel(teamName: "SV Elversberg", punkte: 67, tore: 5, gegentore: 3, spiele: 34, platz: 1, differenz: 37, logo: "")
        let team2 = TabelleModel(teamName: "Freiburg II", punkte: 64, tore: 6, gegentore: 5, spiele: 34, platz: 2, differenz: 17, logo: "")
        let team3 = TabelleModel(teamName: "Wiesbaden", punkte: 63, tore: 4, gegentore: 3, spiele: 34, platz: 3, differenz: 20, logo: "")
        let team4 = TabelleModel(teamName: "Dynamo Dresden", punkte: 60, tore: 3, gegentore: 2, spiele: 34, platz: 4, differenz: 20, logo: "")
        let team5 = TabelleModel(teamName: "VfL Osnabrück", punkte: 60, tore: 2, gegentore: 9, spiele: 34, platz: 5, differenz: 17, logo: "")
        let team6 = TabelleModel(teamName: "Saarbrücken", punkte: 59, tore: 5, gegentore: 3, spiele: 34, platz: 6, differenz: 21, logo: "")
        let team7 = TabelleModel(teamName: "SV Waldhof-Mannheim", punkte: 57, tore: 6, gegentore: 5, spiele: 34, platz: 7, differenz: 2, logo: "")
        let team8 = TabelleModel(teamName: "Viktoria Köln", punkte: 51, tore: 4, gegentore: 3, spiele: 34, platz: 8, differenz: 5, logo: "")
        let team9 = TabelleModel(teamName: "1860 München", punkte: 49, tore: 3, gegentore: 2, spiele: 34, platz: 9, differenz: 6, logo: "")
        let team10 = TabelleModel(teamName: "SC Verl", punkte: 48, tore: 2, gegentore: 9, spiele: 34, platz: 10, differenz: 5, logo: "")
        let team11 = TabelleModel(teamName: "Erzgebierge Aue", punkte: 43, tore: 5, gegentore: 3, spiele: 34, platz: 11, differenz: -7, logo: "")
        let team12 = TabelleModel(teamName: "MSV Duisburg", punkte: 42, tore: 6, gegentore: 5, spiele: 34, platz: 12, differenz: -3, logo: "")
        let team13 = TabelleModel(teamName: "FC Ingolstadt", punkte: 41, tore: 4, gegentore: 3, spiele: 34, platz: 13, differenz: -5, logo: "")
        let team14 = TabelleModel(teamName: "Dortmund II", punkte: 40, tore: 3, gegentore: 2, spiele: 34, platz: 14, differenz: -2, logo: "")
        let team15 = TabelleModel(teamName: "Rot-Weiss Essen", punkte: 40, tore: 2, gegentore: 9, spiele: 34, platz: 15, differenz: -9, logo: "rwetabelle 1")
        let team16 = TabelleModel(teamName: "Hallescher FC", punkte: 35, tore: 5, gegentore: 3, spiele: 34, platz: 16, differenz: -11, logo: "")
        let team17 = TabelleModel(teamName: "VfB Oldenburg", punkte: 32, tore: 6, gegentore: 5, spiele: 34, platz: 17, differenz: -21, logo: "")
        let team18 = TabelleModel(teamName: "SpVgg Bayreuth", punkte: 31, tore: 4, gegentore: 3, spiele: 34, platz: 18, differenz: -35, logo: "")
        let team19 = TabelleModel(teamName: "SV Meppen", punkte: 30, tore: 3, gegentore: 2, spiele: 34, platz: 19, differenz: -25, logo: "")
        let team20 = TabelleModel(teamName: "FSV Zwickau", punkte: 28, tore: 2, gegentore: 9, spiele: 34, platz: 20, differenz: -32, logo: "")
        
        self.tabelle = [team1, team2, team3, team4, team5, team6, team7, team8, team9, team10, team11, team12, team13, team14, team15, team16, team17, team18, team19, team20]
    }
}

