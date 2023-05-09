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
        let player1 = KaderModel(name: "JAKOB GOLZ ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 18.08.1998 ", birthPlace: "GEBURTSORT: HAMBURG ", since: "ROT-WEISSER SEIT 2019 ", photo: "golzjakob", previousClub: "LETZTER VEREIN: HAMBURGER SV ", number: "TW  # 1  ")
        let player2 = KaderModel(name: "RAPHAEL KOCZOR ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 17.01.1989 ", birthPlace: "GEBURTSORT: RACIBORZ, PL ", since: "ROT-WEISSER SEIT 2021 ", photo: "raffakozcor", previousClub: "LETZTER VEREIN: MSV DUISBURG ", number: "TW  # 21  ")
        let player3 = KaderModel(name: "FELIX WIENAND ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 27.06.2002 ", birthPlace: "GEBURTSORT: BOCHOLT ", since: "ROT-WEISSER SEIT 2022 ", photo: "felixwienand", previousClub: "LETZTER VEREIN: SCHALKE 04      ", number: "TW  # 35  ")
      //  let player4 = KaderModel(name: "MORITZ RÖMLING ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 30.04.2001 ", birthPlace: "GEBURTSORT: WITTEN ", since: "ROT-WEISSER SEIT 2022 ", photo: "moritz", previousClub: "LETZTER VEREIN: VFL BOCHUM      ", number: "VER  # 2  ")
    //    let player5 = KaderModel(name: "FELIX HERZENBRUCH ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 08.08.1992 ", birthPlace: "GEBURTSORT: WUPPERTAL ", since: "ROT-WEISSER SEIT 2020 ", photo: "herze", previousClub: "LETZTER VEREIN: WUPPERTA. SV    ", number: "VER  # 3  ")
     //   let player6 = KaderModel(name: "FELIX BASTIANS ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 09.05.1988 ", birthPlace: "GEBURTSORT: BOCHUM ", since: "ROT-WEISSER SEIT 2021 ", photo: "bastians", previousClub: "LETZTER VEREIN: NORTHW., ENG     ", number: "VER  # 4  ")
  //      let player7 = KaderModel(name: "ANDREAS WIEGEL ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 21.07.1991 ", birthPlace: "GEBURTSORT: PADERBORN ", since: "ROT-WEISSER SEIT 2022 ", photo: "wiegel", previousClub: "LETZTER VEREIN: SCHALKE 04       ", number: "VER  # 7  ")
    //    let player8 = KaderModel(name: "MUSTAFA KOUROUMA ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 09.01.2003 ", birthPlace: "GEBURTSORT: ESSEN ", since: "ROT-WEISSER SEIT 2020 ", photo: "mustafa", previousClub: "LETZTER VEREIN: EIGENE JUG.    ", number: "VER  # 16  ")
            
            self.kader = [player1, player2,player3]
        }
    }

