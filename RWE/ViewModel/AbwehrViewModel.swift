//
//  AbwehrViewModel.swift
//  RWE
//
//  Created by Olli on 09.05.23.
//

import Foundation

class AbwehrViewModel: ObservableObject {
    @Published var kader: [KaderModel]
    
    init() {
        
        let player4 = KaderModel(name: "MORITZ RÖMLING ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 30.04.2001 ", birthPlace: "GEBURTSORT: WITTEN ", since: "ROT-WEISSER SEIT 2022 ", photo: "moritz", previousClub: "LETZTER VEREIN: VFL BOCHUM      ", number: "2 ")
        let player5 = KaderModel(name: "FELIX HERZENBRUCH ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 08.08.1992 ", birthPlace: "GEBURTSORT: WUPPERTAL ", since: "ROT-WEISSER SEIT 2020 ", photo: "herze", previousClub: "LETZTER VEREIN: WUPPERTA. SV    ", number: "3 ")
        let player6 = KaderModel(name: "FELIX BASTIANS ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 09.05.1988 ", birthPlace: "GEBURTSORT: BOCHUM ", since: "ROT-WEISSER SEIT 2021 ", photo: "bastians", previousClub: "LETZTER VEREIN: NORTHW., ENG     ", number: "4 ")
        let player7 = KaderModel(name: "ANDREAS WIEGEL ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 21.07.1991 ", birthPlace: "GEBURTSORT: PADERBORN ", since: "ROT-WEISSER SEIT 2022 ", photo: "wiegel", previousClub: "LETZTER VEREIN: SCHALKE 04       ", number: "7 ")
        let player8 = KaderModel(name: "MUSTAFA KOUROUMA ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 09.01.2003 ", birthPlace: "GEBURTSORT: ESSEN ", since: "ROT-WEISSER SEIT 2020 ", photo: "mustafa", previousClub: "LETZTER VEREIN: EIGENE JUG.    ", number: "16 ")
        
        //TODO: weitere Spieler
        
        self.kader = [player4, player5, player6, player7, player8]
    }
}
