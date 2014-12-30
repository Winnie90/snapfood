//
//  ImageTableViewController.swift
//  SnapFood
//
//  Created by Christopher Winstanley on 30/12/2014.
//  Copyright (c) 2014 SnapFood. All rights reserved.
//

import UIKit

class ImageTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if User().exists == false{
            UIManager.sharedInstance.logout(navigationController!)
        }
    }
}
