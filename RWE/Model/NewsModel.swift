//
//  NewsModel.swift
//  RWE
//
//  Created by Olli on 30.05.23.
//

import Foundation

struct NewsModel {
    var id: UUID
    let pic: String
    let textHead: String
    let textinfo: String
    
    
    init(pic: String, textHead: String, textinfo: String) {
        self.id = UUID()
        self.pic = pic
        self.textHead = textHead
        self.textinfo = textinfo
    }
}
