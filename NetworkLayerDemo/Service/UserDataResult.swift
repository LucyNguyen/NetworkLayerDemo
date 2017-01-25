//
//  UserDataResult.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit

enum UserDataResult {
    case success(user: UserData)
    case failure(error: NSError?)
}
