//
//  SpielplanModel.swift
//  RWE
//
//  Created by Olli on 31.05.23.
//

import Foundation

struct SpielplanModel {
    var id: UUID
    var teamNameHome: String
    var teamNameAway: String
    var ergebnis: String
    var teamLogoHome: String
    var teamLogoAway: String
    var spieltag: String
    var datum: String
    var uhrzeit: String
    
    init (teamNameHome: String, teamNameAway: String, ergebnis: String, teamLogoHome: String, teamLogoAway: String, spieltag: String, datum: String, uhrzeit: String) {
        self.id = UUID()
        self.teamNameHome = teamNameHome
        self.teamNameAway = teamNameAway
        self.ergebnis = ergebnis
        self.teamLogoHome = teamLogoHome
        self.teamLogoAway = teamLogoAway
        self.spieltag = spieltag
        self.datum = datum
        self.uhrzeit = uhrzeit
    }
}

