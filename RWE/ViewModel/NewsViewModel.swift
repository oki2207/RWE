//
//  NewsViewModel.swift
//  RWE
//
//  Created by Olli on 30.05.23.
//

import Foundation

class NewsViewModel: ObservableObject {
    @Published var news: [NewsModel]
    
    init() {
        
        let news1 = NewsModel(pic:"VinkoNews", textHead: "ROT-WEISS ESSEN VERPFLICHTET VINKO ŠAPINA ", textinfo: "String")
        
        self.news = [news1]
    }
}

