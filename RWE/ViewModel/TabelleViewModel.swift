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
        let team1 = TabelleModel(teamName: " SV ELVERSBERG (N) ", punkte: 74 , tore: 5 , gegentore: 3 , spiele: 38 , platz: 1, differenz: 40, logo: "elvlogotabelle")
        let team2 = TabelleModel(teamName: " SC FREIBURG II ", punkte: 73, tore: 6, gegentore: 5, spiele: 38, platz: 2, differenz: 20, logo: "freiburglogotabelle")
        let team3 = TabelleModel(teamName: " VFL OSNABRÜCK ", punkte: 70, tore: 4, gegentore: 3, spiele: 38, platz: 3, differenz: 21, logo: "osnalogotabelle")
        let team4 = TabelleModel(teamName: " WEHEN-WIESBADEN ", punkte: 70, tore: 3, gegentore: 2, spiele: 38, platz: 4, differenz: 20, logo: "wehenlogotabelle")
        let team5 = TabelleModel(teamName: " SAARBRÜCKEN ", punkte: 69, tore: 2, gegentore: 9, spiele: 38, platz: 5, differenz: 25, logo: "saarlogotabelle")
        let team6 = TabelleModel(teamName: " DYNAMO DRESDEN (A) ", punkte: 69, tore: 5, gegentore: 3, spiele: 38, platz: 6, differenz: 21, logo: "dynamologotabelle")
        let team7 = TabelleModel(teamName: " SV WALDHOF-MANNHEIM ", punkte: 60, tore: 6, gegentore: 5, spiele: 38, platz: 7, differenz: -2, logo: "mannheimlogotabelle")
        let team8 = TabelleModel(teamName: " TSV 1860 MÜNCHEN ", punkte: 57, tore: 4, gegentore: 3, spiele: 38, platz: 8, differenz: 9, logo: "1860logo")
        let team9 = TabelleModel(teamName: " VIKTORIA KÖLN ", punkte: 55, tore: 3, gegentore: 2, spiele: 38, platz: 9, differenz: 5, logo: "viklogo")
        let team10 = TabelleModel(teamName: " SC VERL ", punkte: 49, tore: 2, gegentore: 9, spiele: 38, platz: 10, differenz: 2, logo: "verllogo")
        let team11 = TabelleModel(teamName: " FC INGOLSTADT (A) ", punkte: 47, tore: 5, gegentore: 3, spiele: 38, platz: 11, differenz: -2, logo: "fcilogo")
        let team12 = TabelleModel(teamName: " MSV DUISBURG ", punkte: 46, tore: 6, gegentore: 5, spiele: 38, platz: 12, differenz: -4, logo: "msvlogo")
        let team13 = TabelleModel(teamName: " BORUSSIA DORTMUND II ", punkte: 45, tore: 4, gegentore: 3, spiele: 38, platz: 13, differenz: -2, logo: "bvblogo")
        let team14 = TabelleModel(teamName: " FC ERZGEBIRGE AUE (A) ", punkte: 45, tore: 3, gegentore: 2, spiele: 38, platz: 14, differenz: -13, logo: "auelogoneu")
        let team15 = TabelleModel(teamName: " ROT-WEISS ESSEN (N) ", punkte: 42, tore: 2, gegentore: 9, spiele: 38, platz: 15, differenz: -13, logo: "rwetabelle 1")
        let team16 = TabelleModel(teamName: " HALLESCHER FC ", punkte: 41, tore: 5, gegentore: 3, spiele: 38, platz: 16, differenz: -11, logo: "hfclogo")
        let team17 = TabelleModel(teamName: " SV MEPPEN ", punkte: 37, tore: 6, gegentore: 5, spiele: 38, platz: 17, differenz: -22, logo: "meppenlogo")
        let team18 = TabelleModel(teamName: " VFB OLDENBURG (N) ", punkte: 35, tore: 4, gegentore: 3, spiele: 38, platz: 18, differenz: -22, logo: "oldelogo")
        let team19 = TabelleModel(teamName: " FSV ZWICKAU ", punkte: 35, tore: 3, gegentore: 2, spiele: 38, platz: 19, differenz: -30, logo: "zwickaulogo")
        let team20 = TabelleModel(teamName: " SPVGG BAYREUTH (N) ", punkte: 32, tore: 2, gegentore: 9, spiele: 38, platz: 20, differenz: -42, logo: "baylogo")
        
        
        

        self.tabelle = [team1, team2, team3, team4, team5, team6, team7, team8, team9, team10, team11, team12, team13, team14, team15, team16, team17, team18, team19, team20]
    }
}

