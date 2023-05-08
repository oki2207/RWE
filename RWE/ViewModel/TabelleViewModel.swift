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
        let team1 = TabelleModel(teamName: "SV ELVERSBERG (N) ", punkte: 67 , tore: 5 , gegentore: 3 , spiele: 34 , platz: 1, differenz: 37, logo: "elvlogotabelle")
        let team2 = TabelleModel(teamName: "FREIBURG II ", punkte: 64, tore: 6, gegentore: 5, spiele: 34, platz: 2, differenz: 17, logo: "freiburglogotabelle")
        let team3 = TabelleModel(teamName: "WIESBADEN ", punkte: 63, tore: 4, gegentore: 3, spiele: 34, platz: 3, differenz: 20, logo: "wehenlogotabelle")
        let team4 = TabelleModel(teamName: "DYNAMO DRESDEN (A) ", punkte: 60, tore: 3, gegentore: 2, spiele: 34, platz: 4, differenz: 20, logo: "dynamologotabelle")
        let team5 = TabelleModel(teamName: "VFL OSNABRÜCK ", punkte: 60, tore: 2, gegentore: 9, spiele: 34, platz: 5, differenz: 17, logo: "osnalogotabelle")
        let team6 = TabelleModel(teamName: "SAARBRÜCKEN ", punkte: 59, tore: 5, gegentore: 3, spiele: 34, platz: 6, differenz: 21, logo: "saarlogotabelle")
        let team7 = TabelleModel(teamName: "SV WALDHOF-MANNHEIM ", punkte: 57, tore: 6, gegentore: 5, spiele: 34, platz: 7, differenz: 2, logo: "mannheimlogotabelle")
        let team8 = TabelleModel(teamName: "VIKTORIA KÖLN ", punkte: 51, tore: 4, gegentore: 3, spiele: 34, platz: 8, differenz: 5, logo: "viklogo")
        let team9 = TabelleModel(teamName: "1860 MÜNCHEN ", punkte: 49, tore: 3, gegentore: 2, spiele: 34, platz: 9, differenz: 6, logo: "1860logo")
        let team10 = TabelleModel(teamName: "SC VERL ", punkte: 48, tore: 2, gegentore: 9, spiele: 34, platz: 10, differenz: 5, logo: "verllogo")
        let team11 = TabelleModel(teamName: "ERZGEBIRGE AUE (A) ", punkte: 43, tore: 5, gegentore: 3, spiele: 34, platz: 11, differenz: -7, logo: "auelogoneu")
        let team12 = TabelleModel(teamName: "MSV DUISBURG ", punkte: 42, tore: 6, gegentore: 5, spiele: 34, platz: 12, differenz: -3, logo: "msvlogo")
        let team13 = TabelleModel(teamName: "FC INGOLSTADT (A) ", punkte: 41, tore: 4, gegentore: 3, spiele: 34, platz: 13, differenz: -5, logo: "fcilogo")
        let team14 = TabelleModel(teamName: "BORUSSIA DORTMUND II ", punkte: 40, tore: 3, gegentore: 2, spiele: 34, platz: 14, differenz: -2, logo: "bvblogo")
        let team15 = TabelleModel(teamName: "ROT-WEISS ESSEN (N) ", punkte: 40, tore: 2, gegentore: 9, spiele: 34, platz: 15, differenz: -9, logo: "rwetabelle 1")
        let team16 = TabelleModel(teamName: "HALLESCHER FC ", punkte: 35, tore: 5, gegentore: 3, spiele: 34, platz: 16, differenz: -11, logo: "hfclogo")
        let team17 = TabelleModel(teamName: "VFB OLDENBURG (N) ", punkte: 32, tore: 6, gegentore: 5, spiele: 34, platz: 17, differenz: -21, logo: "oldelogo")
        let team18 = TabelleModel(teamName: "SPVGG BAYREUTH (N) ", punkte: 31, tore: 4, gegentore: 3, spiele: 34, platz: 18, differenz: -35, logo: "baylogo")
        let team19 = TabelleModel(teamName: "SV MEPPEN ", punkte: 30, tore: 3, gegentore: 2, spiele: 34, platz: 19, differenz: -25, logo: "meppenlogo")
        let team20 = TabelleModel(teamName: "FSV ZWICKAU ", punkte: 28, tore: 2, gegentore: 9, spiele: 34, platz: 20, differenz: -32, logo: "zwickaulogo")
        
        self.tabelle = [team1, team2, team3, team4, team5, team6, team7, team8, team9, team10, team11, team12, team13, team14, team15, team16, team17, team18, team19, team20]
    }
}

