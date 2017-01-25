//
//  UserData.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit
import ObjectMapper

class UserData: Mappable {

    var name: String = ""
    var bio: String = ""
    var email: String = ""
    var numberOfFollowers: Int = 0
    var numberOfFollowings: Int = 0
    
    init() {}
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        name <- map["name"]
        bio <- map["bio"]
        email <- map["email"]
        numberOfFollowers <- map["followers"]
        numberOfFollowings <- map["following"]
    }
}
