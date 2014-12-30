//
//  UIManager.swift
//  SnapFood
//
//  Created by Christopher Winstanley on 30/12/2014.
//  Copyright (c) 2014 SnapFood. All rights reserved.
//

import UIKit
private let _UIManagerSharedInstance = UIManager()
private let storyboard = UIStoryboard(name: "Main", bundle: nil)

class UIManager {
    class var sharedInstance: UIManager {
        return _UIManagerSharedInstance
    }
    
    var loginViewController : UIViewController {
        return storyboard.instantiateViewControllerWithIdentifier("login") as UIViewController
    }
    
    init(){
        
    }
    
    func logout(nav:UINavigationController) {
        nav.presentViewController(loginViewController, animated: false, completion:nil)
    }
    
    func login(view:UIViewController) {
        view.dismissViewControllerAnimated(true, completion:nil)
    }
}