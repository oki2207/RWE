//
//  MitteViewModel.swift
//  RWE
//
//  Created by Olli on 09.05.23.
//

import Foundation

class MitteViewModel: ObservableObject {
    @Published var kader: [KaderModel]
    
    init() {
        
        let player13 = KaderModel(name: "CLEMENS FANDRICH ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 10.01.1991 ", birthPlace: "GEBURTSORT: WITTEN ", since: "ROT-WEISSER SEIT 2022 ", photo: "fandrich", previousClub: "LETZTER VEREIN: ERZG. AUE  ", number: "5 ")
        let player14 = KaderModel(name: "BJÖRN ROTHER ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 29.07.1996 ", birthPlace: "GEBURTSORT: WUPPERTAL ", since: "ROT-WEISSER SEIT 2022 ", photo: "rother", previousClub: "LETZTER VEREIN: HANSA ROSTOCK    ", number: "6 ")
        let player15 = KaderModel(name: "CEDRIC HARENBROCK ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 19.04.1998 ", birthPlace: "GEBURTSORT: BOCHUM ", since: "ROT-WEISSER SEIT 2017 ", photo: "harenbrock", previousClub: "LETZTER VEREIN: BAYER 04 LEV.     ", number: "8 ")
        let player16 = KaderModel(name: "FELIX GÖTZE ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 11.02.1998 ", birthPlace: "GEBURTSORT: PADERBORN ", since: "ROT-WEISSER SEIT 2022 ", photo: "goetze", previousClub: "LETZTER VEREIN: FC AUGSBURG       ", number: "24 ")
        let player17 = KaderModel(name: "TORBEN MÜSEL ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 25.07.1999 ", birthPlace: "GEBURTSORT: ESSEN ", since: "ROT-WEISSER SEIT 2022 ", photo: "muesel", previousClub: "LETZTER VEREIN: BOR. M'gladbach    ", number: "26 ")
        
        //TODO: weitere Spieler
        
        self.kader = [player13, player14, player15, player16, player17]
    }
}
