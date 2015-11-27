//
//  ViewController.swift
//  SelectItemsDialog
//
//  Created by KCJ on 11/26/15.
//  Copyright © 2015 wuguang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private  var  menuDialog:SelectItemsDialog?
    private  var  menuDataArray:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction internal func setAccountPressed() {
        menuDataArray = ["First", "Seconde", "Third", "Forth", "Fifth"]
        self.menuDialog = SelectItemsDialog(data: menuDataArray)
        menuDialog?.onItemClickEvent = menuItemPressed
        menuDialog?.presentFromView(self.view)
    }


    private func menuItemPressed(pos:Int) {
        NSLog("Data:   %s", menuDataArray[pos])
    }
    
}

