//
//  BaseDialog.swift
//  bithumb
//
//  Created by KCJ on 11/20/15.
//  Copyright © 2015 wuguang. All rights reserved.
//

import UIKit

class BaseDialog: UIViewController {
    
    let ANIMATION_DURATION = 0.5
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    init(nibName: String) {
        super.init(nibName: nibName, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func presentFromView(view: UIView) {
        self.view.frame = view.frame
        
        self.view.alpha = 0
        view.addSubview(self.view)
        
        UIView.beginAnimations("", context: nil)
        UIView.setAnimationDuration(ANIMATION_DURATION)
        UIView.setAnimationDelegate(self)
        
        self.view.alpha = 1
        UIView.commitAnimations()
    }
    
    func clearFromView() {
        UIView.beginAnimations("", context: nil)
        UIView.setAnimationDuration(ANIMATION_DURATION)
        UIView.setAnimationDelegate(self)
        self.view.alpha = 0
        self.view.removeFromSuperview()
        UIView.commitAnimations()
    }
}
