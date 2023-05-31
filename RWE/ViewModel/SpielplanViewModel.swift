//
//  SpielplanViewModel.swift
//  RWE
//
//  Created by Olli on 31.05.23.
//

import Foundation

class SpielplanViewModel: ObservableObject {
    @Published var spiel: [SpielplanModel]
    
    init() {
        
        let spiel1 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SV ELVERSBERG ", ergebnis: "1:5 ", teamLogoHome: "", teamLogoAway: "", spieltag: "1. SPIELTAG ", datum: "", uhrzeit: "14:00 ")
        /*
        let spiel2 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel3 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel4 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel5 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel6 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel7 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel8 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel9 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel10 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel11 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spie12 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel13 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel14 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel15 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel16 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel17 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel18 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel19 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel20 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel21 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel22 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel23 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel24 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel25 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel26 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel27 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel28 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel29 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel30 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel31 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel32 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel33 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel34 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel35 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel36 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel37 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        let spiel38 = SpielplanModel(teamNameHome: <#String#>, teamNameAway: <#String#>, ergebnis: <#String#>, teamLogoHome: <#String#>, teamLogoAway: <#String#>, spieltag: <#String#>, datum: <#String#>, uhrzeit: <#String#>)
        
        */
        
        self.spiel = [spiel1]
    }
}
