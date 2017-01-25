//
//  GitHubApi.swift
//  NetworkLayerDemo
//
//  Created by Nguyen Quynh Mai on 1/25/17.
//  Copyright © 2017 Econ. All rights reserved.
//

import UIKit

protocol APIServiceProtocol {
    func requestUserWithUsername(input: UserDataInput, completion: @escaping (_ result: UserDataResult) -> Void)
}
