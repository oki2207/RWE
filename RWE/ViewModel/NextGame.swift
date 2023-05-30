//
//  NextGame.swift
//  RWE
//
//  Created by Olli on 11.05.23.
//

import Foundation

class NextGame: ObservableObject {
    @Published var game: [GameModel]
    
    init() {
        let nextGame1 = GameModel(spieltag: "FINALE ", league: "NR-POKAL ", day: "SAMSTAG ", date: "06. JUNI 2023 ", time: "16:15 UHR ", homeTeamLogo: "Logo_Rot-Weiss_Essen", awayTeamLogo: "RWOLogo", homeTeamName: "ROT-WEISS ESSEN ", awayTeamName: "ROT-WEISS OBERHAUSEN ")
        
        self.game = [nextGame1]
    }
}

