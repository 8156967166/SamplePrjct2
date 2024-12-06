//
//  NetflixCollectionViewCellModel.swift
//  SamplePrjct
//
//  Created by Anisha on 08/05/23.
//

import Foundation

enum NetfilxCollectionCellType {
    case popular
}

class NetfilxCollectionViewCellModel {
    var cellType: NetfilxCollectionCellType = .popular
    var identifier: String = "popular.cell"
    var netFlixDetails: Netflix = Netflix([:])
    
    init(strTitle: String, cellType: NetfilxTableCellType) {
        self.cellType = cellType
        self.netFlixDetails.title = strTitle
        
        switch cellType {
        case .popular:
            identifier = "popular.cell"
        }
    }
    
    func getTitle() -> String {
        return netFlixDetails.title ?? ""
    }
}
