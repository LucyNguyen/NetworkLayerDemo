//
//  ApiService.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit
import Alamofire

class APIService: APIServiceProtocol {
    
    var alamofireManager = Alamofire.SessionManager()
    
    init() {
//        let configuration = URLSessionConfiguration.default
//        configuration.timeoutIntervalForRequest = 20
//        configuration.timeoutIntervalForResource = 20
//        alamofireManager = Alamofire.SessionManager(configuration: configuration)
    }
    
    private func request(input: APIInputBase, completion: @escaping (_ value: AnyObject?, _ error: NSError?) -> Void) {
        func request() {
            print("Request: ", input.url)
            let url = input.url
            Alamofire.request(url, method: input.requestType, parameters: input.body, encoding: input.encoding)
                .responseJSON (completionHandler: {(response) in
                    switch response.result {
                    case .success(let value):
                        completion(value as AnyObject, nil)
                    case .failure(let error):
                        completion(nil, error as NSError?)
                    }
                })
        }
        
        request()
    }
    
    func requestUserWithUsername(input: UserDataInput, completion: @escaping (_ result: UserDataResult) -> Void) {
        request(input: input, completion: {(value, error) -> Void in
            if let value = value as? [String: AnyObject], let userData = UserData(JSON: value) {
                completion(UserDataResult.success(user: userData))
            }
            else if let error = error {
                completion(UserDataResult.failure(error: error))
            }
            else {
                completion(UserDataResult.failure(error: nil))
            }
        })
    }
}

