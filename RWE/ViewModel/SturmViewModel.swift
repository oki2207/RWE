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
            photo: "holzweiler",
            previousClub: "LETZTER VEREIN: VIKTORIA KÖLN ",
            number: "10 ")
       // ---------------------------------------------------------------//HIER WEITERMACHEN 
        let player22 = KaderModel(
            name: "CEDRIC HARENBROCK ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 19.04.1998 ",
            birthPlace: "GEBURTSORT: WUPPERTAL ",
            since: "ROT-WEISSER SEIT 2017 ",
            photo: "harenbrock",
            previousClub: "LETZTER VEREIN: BAYER 04 LEV. ",
            number: "8 ")
        
        let player23 = KaderModel(
            name: "FELIX GÖTZE ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 11.02.1998 ",
            birthPlace: "GEBURTSORT: DORTMUND ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "goetze",
            previousClub: "LETZTER VEREIN: FC AUGSBURG ",
            number: "24 ")
        
        let player24 = KaderModel(
            name: "TORBEN MÜSEL ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 25.07.1999 ",
            birthPlace: "GEBURTSORT: GRÜNSTADT ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "muesel",
            previousClub: "LETZTER VEREIN: BOR. M'GLADBACH ",
            number: "26 ")
        
        let player25 = KaderModel(
            name: "NIKLAS TARNAT ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 26.05.1998 ",
            birthPlace: "GEBURTSORT: SOLINGEN ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "tarnat",
            previousClub: "LETZTER VEREIN: HANNOVER 96 ",
            number: "31 ")
        
        let player26 = KaderModel(
            name: "THOMAS EISFELD ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 18.01.1993 ",
            birthPlace: "GEBURTSORT: FINSTERWALDE ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "eisfeld",
            previousClub: "LETZTER VEREIN: VFL BOCHUM ",
            number: "32 ")
        
        let player27 = KaderModel(
            name: "THOMAS EISFELD ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 18.01.1993 ",
            birthPlace: "GEBURTSORT: FINSTERWALDE ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "eisfeld",
            previousClub: "LETZTER VEREIN: VFL BOCHUM ",
            number: "32 ")
        
        
        self.kader = [player20, player21, player22, player23, player24, player25, player26, player27]
    }
}
