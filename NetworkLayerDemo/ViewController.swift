//
//  ViewController.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Test service
        var userService: UserServiceProtocol = UserService()
        userService.getUserData(username: "LucyNguyen")
        userService.delegate = self
        
        /*let urlString = "https://api.github.com/users/LucyNguyen"
        Alamofire.request(urlString, method: HTTPMethod.get, parameters: nil, encoding: URLEncoding(), headers: nil)
            .responseJSON(completionHandler: {(response) in
                switch response.result {
                case .success(let value):
                    if let value = value as? [String: AnyObject], let json = UserData(JSON: value) {
                        print("Response: ", json)
                    }
                    
                case .failure(let error):
                    print("Response error: ", error.localizedDescription)
                }
            })*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UserServiceDelegate {
    func getUserDataSuccess(userData: AnyObject?) {
        if let userData = userData as? UserData {
            print(userData)
        }
    }
    
    func getUserDataFail(error: NSError?) {
        if let error = error {
            print("Request error: ", error.localizedDescription)
        }
    }
}

