//
//  UserService.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit

class UserService: UserServiceProtocol {
    let api = APIService()
    weak var delegate: UserServiceDelegate?

    func getUserData(username: String) {
        let input = UserDataInput(username: username)
        api.requestUserWithUsername(input: input, completion: { [weak self] (result) in
            switch result {
            case .success(let user):
                self?.delegate?.getUserDataSuccess(userData: user)
            case .failure(let error):
                self?.delegate?.getUserDataFail(error: error)
            }
        })
    }
}
