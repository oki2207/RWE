//
//  createPlayer.swift
//  RWE
//
//  Created by Olli on 08.05.23.
//

import Foundation

class KaderViewModel: ObservableObject {
    @Published var kader: [KaderModel]
    
    init() {
        let player1 = KaderModel(name: "JAKOB GOLZ ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 18.08.1998 ", birthPlace: "GEBURTSORT: HAMBURG ", since: "ROT-WEISSER SEIT 2019 ", photo: "golzjakob", previousClub: "LETZTER VEREIN: HAMBURGER SV ", number: "1 ")
        let player2 = KaderModel(name: "RAPHAEL KOCZOR ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 17.01.1989 ", birthPlace: "GEBURTSORT: RACIBORZ, PL ", since: "ROT-WEISSER SEIT 2021 ", photo: "raffakozcor", previousClub: "LETZTER VEREIN: MSV DUISBURG ", number: "21 ")
        let player3 = KaderModel(name: "FELIX WIENAND ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 27.06.2002 ", birthPlace: "GEBURTSORT: BOCHOLT ", since: "ROT-WEISSER SEIT 2022 ", photo: "felixwienand", previousClub: "LETZTER VEREIN: SCHALKE 04      ", number: "35 ")
            
            self.kader = [player1, player2,player3]
        }
    }

