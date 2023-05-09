//
//  TrainerViewModel.swift
//  RWE
//
//  Created by Olli on 09.05.23.
//

import Foundation
class TrainerViewModel: ObservableObject {
    @Published var kader: [KaderModel]
    
    init() {
        
        let player4 = KaderModel(name: "CHRISTOPH DABROWSKI ", position: "TORHÜTER ", birthDate: "GEBURTSTDATUM: 30.04.2001 ", birthPlace: "GEBURTSORT: WITTEN ", since: "ROT-WEISSER SEIT 2022 ", photo: "dabro", previousClub: "LETZTER VEREIN: HANNOVER 96     ", number: "COACH ")
        
        
        self.kader = [player4]
    }
}
