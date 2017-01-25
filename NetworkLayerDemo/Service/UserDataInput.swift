//
//  UserDataInput.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit

class UserDataInput: APIInputBase {

    var username: String
    
    init(username: String) {
        self.username = username
        super.init()
        
        url = String(format: URLs.getUserDataUrl, username)
        requestType = .get
    }
}
