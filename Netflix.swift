//
//  Netflix.swift
//  SamplePrjct
//
//  Created by Anisha on 08/05/23.
//

import Foundation

class Netflix {
    var title: String?
    var image: String?
    
    init(_ fromData: [String: Any]) {
        self.title = fromData["title"] as? String
        self.image = fromData["image"] as? String
    }
}

