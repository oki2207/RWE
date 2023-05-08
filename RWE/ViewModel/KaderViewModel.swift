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
        let player1 = KaderModel(name: "Jakob Golz", position: "Torhüter", birthDate: "01.01.2023", birthPlace: "Hamburg", since: "seit 2017", photo: "golzjakob", previousClub: "Hamburger SV", number: 1)
            
            
            self.kader = [player1]
        }
    }

