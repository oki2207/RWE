//
//  NewsViewModel.swift
//  RWE
//
//  Created by Olli on 30.05.23.
//


import SwiftUI
import Foundation

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
}

class NewsViewModel: ObservableObject {
    @Published var news: [NewsModel]
    
    init() {
        
        let news1 = NewsModel(pic:"Pokalsieger", textHead: "ROT-WEISS ESSEN IST POKALSIEGER ", textinfo: "2:0 GEGEN OBERHAUSEN ")
        let news2 = NewsModel(pic:"dabro 1", textHead: "„MAXIMAL INVESTIEREN UND DOCH LOCKER SEIN! “  ", textinfo: "DABRO VOR POKALSPIEL ")
        let news3 = NewsModel(pic:"VinkoNews", textHead: "ROT-WEISS ESSEN VERPFLICHTET VINKO ŠAPINA ", textinfo: "MITTELFELDSPIELER KOMMT AUS VERL ")
        let news4 = NewsModel(pic:"rwverl", textHead: "2:2 ZUM SAISONABSCHLUSS GEGEN VERL ", textinfo: "AM ENDE TABELLENPLATZ 15 ")
        let news5 = NewsModel(pic:"bleibt", textHead: "GÖTZE, BERLINSKI & HARENBROCK ", textinfo: "SIE BLEIBEN BEI KLASSENERHALT ")
        
        
        self.news = [news1,news2,news3,news4,news5]
    }
}

