//
//  BucketListTableViewCell.swift
//  uvabucketlist
//
//  Created by user145429 on 9/29/18.
//  Copyright © 2018 user145429. All rights reserved.
//

import Foundation
import UIKit

class BucketListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var ItemNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
