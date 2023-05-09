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
        
        let player4 = KaderModel(
            name: "MORITZ RÖMLING ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 30.04.2001 ",
            birthPlace: "GEBURTSORT: WITTEN ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "moritz",
            previousClub: "LETZTER CLUB: VFL BOCHUM ",
            number: "2 ")
        
        let player5 = KaderModel(
            name: "FELIX HERZENBRUCH ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 08.08.1992 ",
            birthPlace: "GEBURTSORT: WUPPERTAL ",
            since: "ROT-WEISSER SEIT 2020 ",
            photo: "herze",
            previousClub: "LETZTER KLUB: WUPPERTALER SV",
            number: "3 ")
        
        let player6 = KaderModel(
            name: "FELIX BASTIANS ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 09.05.1988 ",
            birthPlace: "GEBURTSORT: BOCHUM ",
            since: "ROT-WEISSER SEIT 2021 ",
            photo: "bastians",
            previousClub: "LETZTER KLUB: FC WAASLAND (BEL) ",
            number: "4 ")
        
        let player7 = KaderModel(
            name: "ANDREAS WIEGEL ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 21.07.1991 ",
            birthPlace: "GEBURTSORT: PADERBORN ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "wiegel",
            previousClub: "LETZTER KLUB: FC SCHALKE 04 ",
            number: "7 ")
        
        let player8 = KaderModel(
            name: "MUSTAFA KOUROUMA ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 09.01.2003 ",
            birthPlace: "GEBURTSORT: ESSEN ",
            since: "ROT-WEISSER SEIT 2020 ",
            photo: "mustafa",
            previousClub: "LETZTER KLUB: EIGENE JUG. ",
            number: "16 ")
        
        let player9 = KaderModel(
            name: "MICHEL NIEMEYER ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 19.11.1995 ",
            birthPlace: "GEBURTSORT: SALZWEDEL ",
            since: "ROT-WEISSER SEIT 2021 ",
            photo: "niemayer",
            previousClub: "LETZTER KLUB: SV WEHEN-WI. ",
            number: "19 ")
        
        let player10 = KaderModel(
            name: "SANDRO PLECHATY ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 24.08.1997 ",
            birthPlace: "GEBURTSORT: LÜNEN ",
            since: "ROT-WEISSER SEIT 2020 ",
            photo: "plechaty",
            previousClub: "LETZTER KLUB: FC SCHALKE 04 ",
            number: "21 ")
        
        let player11 = KaderModel(
            name: "JOSE ALONSO ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 13.08.2000  ",
            birthPlace: "GEBURTSORT: STUTTGART ",
            since: "ROT-WEISSER SEIT 2021 ",
            photo: "alonso",
            previousClub: "LETZTER KLUB: VFB STUTTGART ",
            number: "23 ")
        
        let player12 = KaderModel(
            name: "MEIKO SPONSEL ",
            position: "TORHÜTER ",
            birthDate: "GEBURTSTDATUM: 28.02.2002 ",
            birthPlace: "GEBURTSORT: WIESBADEN ",
            since: "ROT-WEISSER SEIT 2022 ",
            photo: "sponsel",
            previousClub: "LETZTER KLUB: 1.FC KÖLN",
            number: "28 ")
        
        
        
        self.kader = [player4, player5, player6, player7, player8, player9, player10, player11, player12]
    }
}
