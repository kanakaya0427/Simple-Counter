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
    
    @IBAction func huyasu(){
        number = number + 1
        kaisuLabel.text = String(number)
        changecolor()
        

    }
    
    @IBAction func herasu(){
        number = number - 1
        kaisuLabel.text = String(number)
        changecolor()

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func changecolor(){
    if (number>=10){
    kaisuLabel.textColor = UIColor.redColor()
        }else if (number < 0){
            kaisuLabel.textColor = UIColor.blueColor()
        }else{
            kaisuLabel.textColor = UIColor.blackColor()
        }
    
    }
}


