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
        let news2 = NewsModel(pic:"test1", textHead: "ROT-WEISS ESSEN VERPFLICHTET VINKO ŠAPINA ", textinfo: "String")
        let news3 = NewsModel(pic:"test2", textHead: "ROT-WEISS ESSEN VERPFLICHTET VINKO ŠAPINA ", textinfo: "String")
        let news4 = NewsModel(pic:"test3", textHead: "ROT-WEISS ESSEN VERPFLICHTET VINKO ŠAPINA ", textinfo: "String")
        let news5 = NewsModel(pic:"test4", textHead: "ROT-WEISS ESSEN VERPFLICHTET VINKO ŠAPINA ", textinfo: "String")
        
        
        self.news = [news1, news2,news3,news4,news5]
    }
}

