//
//  UserServiceProtocol.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit

protocol UserServiceDelegate: class {

    func getUserDataSuccess(userData: AnyObject?)
    func getUserDataFail(error: NSError?)
}

protocol UserServiceProtocol {
    weak var delegate: UserServiceDelegate? {get set}
    func getUserData(username: String)
}


