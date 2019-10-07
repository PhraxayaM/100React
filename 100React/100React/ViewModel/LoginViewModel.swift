//
//  LoginViewModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 9/30/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class LoginViewModel {
    let network = NetworkingService()
    
    func loginTapped(username: String, password: String) {
        let user = username
        let pass = password
        network.login(params: ["username": user, "password": pass], completion: {
            print("logging in..")
        })
    }
    
}
