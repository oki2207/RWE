//
//  KaderModel.swift
//  RWE
//
//  Created by Olli on 08.05.23.
//

import Foundation

struct KaderModel {
    var id: UUID
    let name: String
    var position: String
    var birthDate: String
    var birthPlace: String
    var since: String
    var photo: String
    var previousClub: String
    var number: Int
    
    init(name: String, position: String, birthDate: String, birthPlace: String, since: String, photo: String, previousClub: String, number: Int) {
        self.id = UUID()
        self.name = name
        self.position = position
        self.birthDate = birthDate
        self.birthPlace = birthPlace
        self.since = since
        self.photo = photo
        self.previousClub = previousClub
        self.number = number
        
        
    }
}
