//
//  APIInputBase.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit
import Alamofire

class APIInputBase: NSObject {

    var url = ""
    var requestType = Alamofire.HTTPMethod.get
    var body: [String: AnyObject]?
    var headers = ["Content-Type": "application/json; charset=utf-8"]
    
    var encoding: ParameterEncoding {
        switch requestType {
        case .get:
            return URLEncoding()
        default:
            return JSONEncoding()
        }
    }
    
    func setup(url: String, requestType: Alamofire.HTTPMethod) {
        self.url = url
        self.requestType = requestType
    }
}
