//
//  User.swift
//  SnapFood
//
//  Created by Christopher Winstanley on 30/12/2014.
//  Copyright (c) 2014 SnapFood. All rights reserved.
//

import Foundation

class User {
    //current username
    var username:NSString?
    
    var exists:Bool {
        var userDefaults = NSUserDefaults.standardUserDefaults()
        if (userDefaults.valueForKey("username") != nil) {
            return true
        }
        return false
    }
    
    init(){
        
    }
    
    final func setUsername(username:NSString){
        self.username = username
        var userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setValue(self.username, forKey: "username")
        userDefaults.synchronize()
    }
    
    final func getUsername() -> NSString? {
        if (self.username != nil) {
            return self.username!
        }
        var userDefaults = NSUserDefaults.standardUserDefaults()
        if (userDefaults.valueForKey("username") != nil){
            self.username = userDefaults.valueForKey("username") as? NSString
            return self.username!
        }
        return nil
    }
}