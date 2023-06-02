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
        
        let news1 = NewsModel(pic:"sapinanews", textHead: "ROT-WEISS ESSEN  ", textinfo: "NEWSNEWSNEWS")
        let news2 = NewsModel(pic:"TESTTESTTEST2", textHead: "ROT-WEISS ESSEN  ", textinfo: "NEWSNEWSNEWS")
        let news3 = NewsModel(pic:"VinkoNews", textHead: "ROT-WEISS ESSEN  ", textinfo: "NEWSNEWSNEWS")
        let news4 = NewsModel(pic:"TESTTESTTEST4", textHead: "ROT-WEISS ESSEN  ", textinfo: "NEWSNEWSNEWS")
        let news5 = NewsModel(pic:"TESTTESTTEST5", textHead: "ROT-WEISS ESSEN  ", textinfo: "NEWSNEWSNEWS")
        
        
        self.news = [news1,news2,news3,news4,news5]
    }
}

