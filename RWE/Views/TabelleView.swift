//
//  TabelleView.swift
//  HafenstraßeNeu
//
//  Created by Olli on 02.05.23.
//

import SwiftUI

struct TabelleView: View {
    var body: some View {
        ZStack {
            Image("screen3")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                List(teams.sorted(by: { $0.position < $1.position })) { team in
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white.opacity(0.8))
                            .shadow(radius: 5)
                        
                        HStack {
                            Text("\(team.position)")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                                .frame(width: 30)
                            Image(team.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                            Text(team.name)
                                .font(.body)
                                .fontWeight(.semibold)
                            Spacer()
                            VStack {
                                Text("\(team.playedGames)")
                                Text("\(team.won)")
                                Text("\(team.drawn)")
                                Text("\(team.lost)")
                            }
                            VStack {
                                Text("\(team.goalFor)-\(team.goalAgainst)")
                                Text("\(team.goalDifference)")
                                Text("\(team.points)")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.accentColor)
                            }
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                    }
                    .navigationTitle("Tabelle")
                }
            }
        }
    }
    
    struct Team: Identifiable {
        let id = UUID()
        let name: String
        let logo: String
        let playedGames: Int
        let won: Int
        let drawn: Int
        let lost: Int
        let goalFor: Int
        let goalAgainst: Int
        let goalDifference: Int
        let points: Int
        var position: Int = 0
    }
    
    let teams = [
        Team(name: "SV Elversberg", logo: "Logo_Rot-Weiss_Essen", playedGames: 34, won: 6, drawn: 2, lost: 2, goalFor: 18, goalAgainst: 6, goalDifference: 12, points: 20),
        Team(name: "Team 2", logo: "team2", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 3", logo: "team3", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11,goalAgainst: 5, goalDifference: 6, points: 18),
        Team(name: "Team 4", logo: "team4", playedGames: 10, won: 6, drawn: 2, lost: 2, goalFor: 18, goalAgainst: 6, goalDifference: 12, points: 20),
        Team(name: "Team 5", logo: "team5", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 6", logo: "team6", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11, goalAgainst: 5, goalDifference: 6, points: 18),
        Team(name: "Team 7", logo: "team7", playedGames: 10, won: 6, drawn: 2, lost: 2, goalFor: 18, goalAgainst: 6, goalDifference: 12, points: 20),
        Team(name: "Team 8", logo: "team8", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 9", logo: "team9", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11, goalAgainst: 5, goalDifference: 6, points: 18),
        Team(name: "SV Elversberg", logo: "Logo_Rot-Weiss_Essen", playedGames: 10, won: 6, drawn: 2, lost: 2, goalFor: 18, goalAgainst: 6, goalDifference: 12, points: 20),
        Team(name: "Team 2", logo: "team2", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 3", logo: "team3", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11,goalAgainst: 5, goalDifference: 6, points: 18),
        Team(name: "Team 4", logo: "team4", playedGames: 10, won: 6, drawn: 2, lost: 2, goalFor: 18, goalAgainst: 6, goalDifference: 12, points: 20),
        Team(name: "Team 5", logo: "team5", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 6", logo: "team6", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11, goalAgainst: 5, goalDifference: 6, points: 18),
        Team(name: "Team 7", logo: "team7", playedGames: 10, won: 6, drawn: 2, lost: 2, goalFor: 18, goalAgainst: 6, goalDifference: 12, points: 20),
        Team(name: "Team 8", logo: "team8", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 9", logo: "team9", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11, goalAgainst: 5, goalDifference: 6, points: 18),
        Team(name: "Team 8", logo: "team8", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 13, goalAgainst: 5, goalDifference: 8, points: 18),
        Team(name: "Team 9", logo: "team9", playedGames: 10, won: 5, drawn: 3, lost: 2, goalFor: 11, goalAgainst: 5, goalDifference: 6, points: 18),
    ]
    
    struct TabelleView_Previews: PreviewProvider {
        static var previews: some View {
            TabelleView()
        }
    }
}
