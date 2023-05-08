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
        let player1 = KaderModel(name: "JAKOB GOLZ", position: "TORHÜTER", birthDate: "01.01.2023", birthPlace: "HAMBURG", since: "SEIT 2017", photo: "golzjakob", previousClub: "HAMBURGER SV", number: "1  ")
            
            
            self.kader = [player1]
        }
    }

