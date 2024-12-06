//
//  NetflixCollectionCellModel.swift
//  SamplePrjct
//
//  Created by Anisha on 09/05/23.
//

import Foundation

enum NetfilxCollectionCellType {
    case pageControlCell
    case popularCell
}
class NetflixCollectionCellModel {
    var cellType: NetfilxCollectionCellType = .pageControlCell
    var identifier: String = "pageCollection.cell"
    var netFlixDetails: Netflix = Netflix([:])
    
    init(strImage: String, cellType: NetfilxCollectionCellType) {
        self.cellType = cellType
        self.netFlixDetails.image = strImage
        
        switch cellType {
        case .pageControlCell:
            identifier = "pageCollection.cell"
        case .popularCell:
            identifier = "popularCollctn.cell"
        
        }
    }
    
    func getImage() -> String {
        return netFlixDetails.image ?? ""
    }
}
