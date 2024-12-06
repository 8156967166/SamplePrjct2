//  SidemenuTableViewCell.swift
//  SamplePrjct
//  Created by Anisha on 11/05/23.

import UIKit

class SidemenuTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageInCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
