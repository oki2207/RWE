//
//  GameModel.swift
//  RWE
//
//  Created by Olli on 11.05.23.
//

import Foundation

struct GameModel {
    var id: UUID
    let spieltag: String
    let league: String
    let day: String
    let date: String
    let time: String
    let homeTeamLogo: String
    let awayTeamLogo: String
    let homeTeamName: String
    let awayTeamName: String
    
    init(spieltag: String, league: String, day: String, date: String, time: String, homeTeamLogo: String, awayTeamLogo: String, homeTeamName: String, awayTeamName: String) {
        self.id = UUID()
        self.spieltag = spieltag
        self.league = league
        self.day = day
        self.date = date
        self.time = time
        self.homeTeamLogo = homeTeamLogo
        self.awayTeamLogo = awayTeamLogo
        self.homeTeamName = homeTeamName
        self.awayTeamName = awayTeamName
    }
}
