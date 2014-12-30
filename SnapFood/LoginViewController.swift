//
//  ViewController.swift
//  SnapFood
//
//  Created by Christopher Winstanley on 13/12/2014.
//  Copyright (c) 2014 SnapFood. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitButtonPressed(sender: AnyObject) {
        UIManager.sharedInstance.login(self)
    }

}
