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
        
        let spiel1 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SV ELVERSBERG ", ergebnis: " 1 : 5 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "elvlogotabelle", spieltag: "1. SPIELTAG ", datum: "23. JUL. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel2 = SpielplanModel(teamNameHome: "MSV DUISBURG ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 2 : 2 ", teamLogoHome: "msvlogo", teamLogoAway: "rwetabelle 1", spieltag: "2. SPIELTAG", datum: "05. AUG. 2022", uhrzeit: "19 UHR ")
        
        let spiel3 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "VIKTORIA KÖLN ", ergebnis: " 1 : 4 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "viklogo", spieltag: "3. SPIELTAG ", datum: "09. AUG. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel4 = SpielplanModel(teamNameHome: "BORUSSIA DORTMUND II ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 0 ", teamLogoHome: "bvblogo", teamLogoAway: "rwetabelle 1", spieltag: "4. SPIELTAG ", datum: "13. AUG. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel5 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "FC INGOLSTADT ", ergebnis: " 2 : 2 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "fcilogo", spieltag: "5. SPIELTAG ", datum: "20. AUG. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel6 = SpielplanModel(teamNameHome: "SPVGG BAYREUTH ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 1 ", teamLogoHome: "baylogo", teamLogoAway: "rwetabelle 1", spieltag: "6. SPIELTAG ", datum: "27. AUG. 2022 ", uhrzeit: "14 UHR ")
        
         
        let spiel7 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "ERZGEBIERGE AUE ", ergebnis: " 2 : 1 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "auelogoneu", spieltag: "7. SPIELTAG ", datum: "02. SEP. 2022", uhrzeit: " 19 UHR ")
        
        let spiel8 = SpielplanModel(teamNameHome: "VFL OSNABRÜCK", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 0 ", teamLogoHome: "osnalogotabelle", teamLogoAway: "rwetabelle 1", spieltag: "8. SPIELTAG ", datum: "09. SEP. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel9 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "FC SAARBRÜCK. ", ergebnis: " 1 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "saarlogotabelle", spieltag: "9. SPIELTAG ", datum: "19. SEP. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel10 = SpielplanModel(teamNameHome: "SV WEHEN-WIESBADEN ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 3 : 1 ", teamLogoHome: "wehenlogotabelle", teamLogoAway: "rwetabelle 1", spieltag: "10. SPIELTAG ", datum: "02. OKT. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel11 = SpielplanModel(teamNameHome: "SC FREIBURG II ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 0 : 3 ", teamLogoHome: "freiburglogotabelle", teamLogoAway: "rwetabelle 1", spieltag: "11. SPIELTAG ", datum: "09. OKT. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel12 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "DYNAMO DRESDEN ", ergebnis: " 1 : 1 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "dynamologotabelle", spieltag: "12. SPIELTAG ", datum: "15. OKT. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel13 = SpielplanModel(teamNameHome: "WALDHOF MANNHEIM ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 2 ", teamLogoHome: "mannheimlogotabelle", teamLogoAway: "rwetabelle 1", spieltag: "13. SPIELTAG ", datum: "22. OKT. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel14 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "FSV ZWICKAU ", ergebnis: " 1 : 1 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "zwickaulogo", spieltag: "14. SPIELTAG ", datum: "29. OKT. 2022 ", uhrzeit: "14 UHR ")
        
        let spiel15 = SpielplanModel(teamNameHome: "VFB OLDENBURG ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 3 : 5 ", teamLogoHome: "oldelogo", teamLogoAway: "rwetabelle 1", spieltag: "15. SPIELTAG ", datum: "06. NOV. 2022 ", uhrzeit: "13 UHR ")
        
        let spiel16 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SV MEPPEN ", ergebnis: " 0 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "meppenlogo", spieltag: "16. SPIELTAG ", datum: "09. NOV. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel17 = SpielplanModel(teamNameHome: "1860 MÜNCHEN ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 1 ", teamLogoHome: "1860logo", teamLogoAway: "rwetabelle 1", spieltag: "17. SPIELTAG ", datum: "14. NOV. 2022 ", uhrzeit: "19 UHR ")
        
        let spiel18 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "HALLESCHER FC ", ergebnis: " 0 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "hfclogo", spieltag: "18. SPIELTAG ", datum: "14. JAN. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel19 = SpielplanModel(teamNameHome: "SC VERL ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 1 ", teamLogoHome: "verllogo", teamLogoAway: "rwetabelle 1", spieltag: "19. SPIELTAG ", datum: "21. JAN. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel20 = SpielplanModel(teamNameHome: "SV ELVERSBERG ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 3 : 0 ", teamLogoHome: "elvlogotabelle", teamLogoAway: "rwetabelle 1", spieltag: "20. SPIELTAG ", datum: "27. JAN. 2023 ", uhrzeit: "19 UHR ")
        
        let spiel21 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "MSV DUISBURG ", ergebnis: " 1 : 1 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "msvlogo", spieltag: "21. SPIELTAG ", datum: "05. FEB. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel22 = SpielplanModel(teamNameHome: "VIKTORIA KÖLN ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 0 ", teamLogoHome: "viklogo", teamLogoAway: "rwetabelle 1", spieltag: "22. SPIELTAG ", datum: "13. FEB. 2023 ", uhrzeit: "19 UHR ")
        
        let spiel23 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "BORUSSIA DORTMUND II ", ergebnis: " 2 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "bvblogo", spieltag: "23. SPIELTAG ", datum: "19. FEB. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel24 = SpielplanModel(teamNameHome: "FC INGOLSTADT ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 1 : 1 ", teamLogoHome: "fcilogo", teamLogoAway: "rwetabelle 1", spieltag: "24. SPIELTAG ", datum: "25. FEB. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel25 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SPVGG BAYREUTH ", ergebnis: " 2 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "baylogo", spieltag: "25. SPIELTAG ", datum: "05. MÄR. 2023 ", uhrzeit: "13 UHR ")
        
        let spiel26 = SpielplanModel(teamNameHome: "ERZGEBIERGE AUE ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 2 : 1 ", teamLogoHome: "auelogoneu", teamLogoAway: "rwetabelle 1", spieltag: "26. SPIELTAG ", datum: "11. MÄR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel27 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "VFL OSNABRÜCK", ergebnis: " 1 : 1 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "osnalogotabelle", spieltag: "27. SPIELTAG ", datum: "14. MÄR. 2023 ", uhrzeit: "19 UHR ")
        
        let spiel28 = SpielplanModel(teamNameHome: "FC SAARBRÜCK. ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 3 : 0 ", teamLogoHome: "saarlogotabelle", teamLogoAway: "rwetabelle 1", spieltag: "28. SPIELTAG ", datum: "18. MÄR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel29 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SV WEHEN-WIESBADEN ", ergebnis: " 1 : 3 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "wehenlogotabelle", spieltag: "29. SPIELTAG ", datum: "24. MÄR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel30 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SC FREIBURG II ", ergebnis: " 2 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "freiburglogotabelle", spieltag: "30. SPIELTAG ", datum: "01. APR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel31 = SpielplanModel(teamNameHome: "DYNAMO DRESDEN ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 2 : 1 ", teamLogoHome: "dynamologotabelle", teamLogoAway: "rwetabelle 1", spieltag: "31. SPIELTAG ", datum: "08. APR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel32 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "WALDHOF MANNHEIM ", ergebnis: " 0 : 3 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "mannheimlogotabelle", spieltag: "32. SPIELTAG ", datum: "16. APR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel33 = SpielplanModel(teamNameHome: "FSV ZWICKAU ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 0 : 2 ", teamLogoHome: "zwickaulogo", teamLogoAway: "rwetabelle 1", spieltag: "33. SPIELTAG ", datum: "23. APR. 2023 ", uhrzeit: "14 UHR ")
        
        let spiel34 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "VFB OLDENBURG ", ergebnis: " 0 : 0 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "oldelogo", spieltag: "34. SPIELTAG ", datum: "30. APR. 2023 ", uhrzeit: "15 UHR ")
        
        let spiel35 = SpielplanModel(teamNameHome: "SV MEPPEN ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 2 : 0 ", teamLogoHome: "meppenlogo", teamLogoAway: "rwetabelle 1", spieltag: "35. SPIELTAG ", datum: "06. MAI 2023 ", uhrzeit: "14 UHR ")
        
        let spiel36 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "1860 MÜNCHEN ", ergebnis: " 2 : 2 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "1860logo", spieltag: "36. SPIELTAG ", datum: "14. MAI 2023 ", uhrzeit: "13 UHR ")
        
        let spiel37 = SpielplanModel(teamNameHome: "HALLESCHER FC ", teamNameAway: "ROT-WEISS ESSEN ", ergebnis: " 2 : 0 ", teamLogoHome: "hfclogo", teamLogoAway: "rwetabelle 1", spieltag: "37. SPIELTAG ", datum: "20. MAI 2023 ", uhrzeit: "14 UHR ")
        
        let spiel38 = SpielplanModel(teamNameHome: "ROT-WEISS ESSEN ", teamNameAway: "SC VERL ", ergebnis: " 2 : 2 ", teamLogoHome: "rwetabelle 1", teamLogoAway: "verllogo", spieltag: "38. SPIELTAG ", datum: "27. MAI 2023 ", uhrzeit: "14 UHR ")
        
        
        
        self.spiel = [spiel1, spiel2, spiel3, spiel4, spiel5, spiel6, spiel7, spiel8, spiel9, spiel10, spiel11, spiel12, spiel13, spiel14, spiel15, spiel16, spiel17, spiel18, spiel19, spiel20, spiel21, spiel22, spiel23, spiel24,spiel25, spiel26, spiel27, spiel28, spiel29, spiel30, spiel31, spiel32, spiel33, spiel34, spiel35, spiel36, spiel37, spiel38]
    }
}
