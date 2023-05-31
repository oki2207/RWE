//
//  LastGame.swift
//  RWE
//
//  Created by Olli on 30.05.23.
//

import Foundation

class LastGame: ObservableObject {
    @Published var game: [GameModel]
    
    init() {
        
        let lastGame1 = GameModel(spieltag: "38. SPIELTAG ", league: "3. LIGA ", day: "SAMSTAG ", date: "27. MAI 2023 ", time: "14:00 UHR ", homeTeamLogo: "Logo_Rot-Weiss_Essen", awayTeamLogo: "VerlLogoB.svg", homeTeamName: "ROT-WEISS ESSEN ", awayTeamName: "SC VERL 1924 EV ")
        
        self.game = [lastGame1]
    }
}
