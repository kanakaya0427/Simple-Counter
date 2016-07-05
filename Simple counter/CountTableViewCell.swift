//
//  CountTableViewCell.swift
//  Simple counter
//
//  Created by NakayaKana on 2016/07/04.
//  Copyright © 2016年 NakayaKana. All rights reserved.
//

import UIKit

class CountTableViewCell: UITableViewCell {
    var number : Int = 0
 
    @IBOutlet var kaisuLabel : UILabel!
    @IBOutlet var naiyouLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func kaisu(){
        number = number + 1
        kaisuLabel.text = String(number)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
