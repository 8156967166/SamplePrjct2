//
//  NetfilxTableViewCellModel.swift
//  SamplePrjct
//
//  Created by Anisha on 08/05/23.
//

import Foundation

enum NetfilxTableCellType {
    case pageControl
    case popular
    
}
class NetfilxTableViewCellModel {
    var cellType: NetfilxTableCellType = .pageControl
    var identifier: String = "pageControl.cell"
    var netFlixDetails: Netflix = Netflix([:])
    
    init(strTitle: String, cellType: NetfilxTableCellType) {
        self.cellType = cellType
        self.netFlixDetails.title = strTitle
        
        switch cellType {
        case .pageControl:
            identifier = "pageControl.cell"
        case .popular:
            identifier = "popular.cell"
        
        }
    }
    
    func getTitle() -> String {
        return netFlixDetails.title ?? ""
    }
}
