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
        let nextGame1 = GameModel(spieltag: "36. SPIELTAG ", league: "3. LIGA ", day: "SAMSTAG, ", date: "13. MAI 2023 ", time: "14 UHR ", homeTeamLogo: "Logo_Rot-Weiss_Essen", awayTeamLogo: "1860logob.svg", homeTeamName: "ROT-WEISS ESSEN ", awayTeamName: "1860 MÜNCHEN ")
        
        self.game = [nextGame1]
    }
}

