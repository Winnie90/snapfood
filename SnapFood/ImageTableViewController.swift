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
        let user = User()
        if user.exists{
            let vc = LoginViewController()
            self.presentViewController(vc, animated: true, completion: nil)
        }

    }
}
