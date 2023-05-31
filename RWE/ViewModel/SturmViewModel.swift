//
//  SturmViewModel.swift
//  RWE
//
//  Created by Olli on 09.05.23.
//

import Foundation

class SturmViewModel: ObservableObject {
    @Published var kader: [KaderModel]
    
    init() {
        
        let player20 = KaderModel(
            name: "RON BERLINSKI ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 08.08.1994 ",
            birthPlace: "GEBURTSORT: BOCHUM ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "ron",
            previousClub: "LETZTER VEREIN: SC VERL ",
            number: "9 ")
        
        let player21 = KaderModel(
            name: "KEVIN HOLZWEILER ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 16.10.1994 ",
            birthPlace: "GEBURTSORT: JÜLICH ",
            since: "ROT-WEISSER SEIT 2021 ",
            photo: "holzeiler",
            previousClub: "LETZTER VEREIN: VIKTORIA KÖLN ",
            number: "10 ")
       
        let player22 = KaderModel(
            name: "SIMON ENGELMANN ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 22.03.1989 ",
            birthPlace: "GEBURTSORT: VECHTA ",
            since: "ROT-WEISSER SEIT 2020 ",
            photo: "engel",
            previousClub: "LETZTER VEREIN: SV RÖDINGHAUSEN ",
            number: "11 ")
        
        let player23 = KaderModel(
            name: "LUCA WOLLSCHLÄGER ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 08.02.2003 ",
            birthPlace: "GEBURTSORT: BERLIN ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "wolle",
            previousClub: "LETZTER VEREIN: HERTHA BSC ",
            number: "13 ")
        
        let player24 = KaderModel(
            name: "LAWRENCE ENNALI ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 07.03.2002 ",
            birthPlace: "GEBURTSORT: HANNOVER ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "ennali",
            previousClub: "LETZTER VEREIN: HANNOVER 96 ",
            number: "18 ")
        
        let player25 = KaderModel(
            name: "AUREL LOUBONGO ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 19.06.2001 ",
            birthPlace: "GEBURTSORT: HAMBURG ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "loubongo",
            previousClub: "LETZTER VEREIN: FC ST.PAULI ",
            number: "22 ")
        
        let player26 = KaderModel(
            name: "ISAIAH YOUNG ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 30.03.1998 ",
            birthPlace: "GEBURTSORT: BERLIN/USA ",
            since: "ROT-WEISSER SEIT 2021 ",
            photo: "young",
            previousClub: "LETZTER VEREIN: WERDER BREMEN ",
            number: "30 ")
        
        let player27 = KaderModel(
            name: "OGUZHAN KEFKIR ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 27.08.1991 ",
            birthPlace: "GEBURTSORT: WUPPERTAL ",
            since: "ROT-WEISSER SEIT 2019 ",
            photo: "kefkir",
            previousClub: "LETZTER VEREIN: KFC UERDINEGEN ",
            number: "38 ")
        
        
        self.kader = [player20, player21, player22, player23, player24, player25, player26, player27]
    }
}
