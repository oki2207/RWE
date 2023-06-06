//
//  TabelleModel.swift
//  RWE
//
//  Created by Olli on 06.06.23.
//

import Foundation

struct TabelleModel: Identifiable {
    var id = UUID()
    let teamName: String
    var punkte: String
    var tore: String
    var gegentore: String
    var spiele: String
    var platz: String
    var differenz: String
    var logo: String
    
    init(teamName: String, punkte: String, tore: String, gegentore: String, spiele: String, platz: String, differenz: String, logo: String) {
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


