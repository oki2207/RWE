//
//  TabelleModel.swift
//  RWE
//
//  Created by Olli on 05.05.23.
//

import Foundation

struct TabelleModel {
    var id: UUID
    let teamName: String
    var punkte: Int
    var tore: Int
    var gegentore: Int
    var spiele: Int
    var platz: Int
    var differenz: Int
    var logo: String
    
    init(teamName: String, punkte: Int, tore: Int, gegentore: Int, spiele: Int, platz: Int, differenz: Int, logo: String) {
        self.id = UUID()
        self.teamName = teamName
        self.punkte = punkte
        self.tore = tore
        self.gegentore = gegentore
        self.spiele = spiele
        self.platz = platz
        self.differenz = differenz
        self.logo = logo
    }
}
