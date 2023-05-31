//
//  NrPokalViewModel.swift
//  RWE
//
//  Created by Olli on 31.05.23.
//

import Foundation

class NrPokalViewModel: ObservableObject {
    @Published var spiel: [SpielplanModel]
    
    init() {
        
        let spiel1 = SpielplanModel(teamNameHome: "SV BURGALTENDORF ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 0 : 5 ", teamLogoHome: "", teamLogoAway: "rwetabelle 1", spieltag: "1. RUNDE ", datum: "23. AUG. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel2 = SpielplanModel(teamNameHome: "1. FC WÜLFRATH ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 0 : 9 ", teamLogoHome: "", teamLogoAway: "rwetabelle 1", spieltag: "2. RUNDE ", datum: "14. SEP. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel3 = SpielplanModel(teamNameHome: "SCHWARZ-WEISS ESSEN ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 5 : 7 n.E. ", teamLogoHome: "", teamLogoAway: "rwetabelle 1", spieltag: "ACHTELFINALE ", datum: "25. OKT. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel4 = SpielplanModel(teamNameHome: "WUPPERTALER SV ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 0 : 1 ", teamLogoHome: "", teamLogoAway: "rwetabelle 1", spieltag: "VIERTELFINALE ", datum: "01. MÄR. 2023 ", uhrzeit: "19 UHR ")
        
        let spiel5 = SpielplanModel(teamNameHome: "1. FC BOCHOLDT ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 5 : 6 n.E. ", teamLogoHome: "", teamLogoAway: "rwetabelle 1", spieltag: "HALBFINALE ", datum: "28. MÄR. 2023 ", uhrzeit: "19 UHR ")
        
        let spiel6 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "ROT-WEISS OBERHAUSEN ", ergebnis: " - : - ", teamLogoHome: "rwetabelle 1", teamLogoAway: "", spieltag: "FINALE ", datum: "03. JUN. 2023 ", uhrzeit: "16:15 UHR ")
        
         
        
        
        
        
        self.spiel = [spiel1, spiel2, spiel3, spiel4, spiel5, spiel6]
    }
}
