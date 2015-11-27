//
//  SelectItemTableViewCell.swift
//  SelectItemsDialog
//
//  Created by KCJ on 11/26/15.
//  Copyright © 2015 wuguang. All rights reserved.
//

import UIKit

class SelectItemTableViewCell: UITableViewCell {
    
    //-----------------
    // MARK: VIEW FUNCTIONS
    //-----------------
    
    ///------------
    //Method: Init with Style
    //Purpose:
    //Notes: This will NOT get called unless you call "registerClass, forCellReuseIdentifier" on your tableview
    ///------------
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)
    {
        //First Call Super
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    
    ///------------
    //Method: Init with Coder
    //Purpose:
    //Notes: This function is apparently required; gets called by default if you don't call "registerClass, forCellReuseIdentifier" on your tableview
    ///------------
    required init?(coder aDecoder: NSCoder)
    {
        //Just Call Super
        super.init(coder: aDecoder)
    }
}
