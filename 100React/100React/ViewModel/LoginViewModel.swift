//
//  LoginViewModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 9/30/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import KeychainSwift

class LoginViewModel {
    let network = NetworkingService()
    let keychain = KeychainSwift()
    let defaults = UserDefaults.standard
    
    func loginTapped(username: String, password: String) -> Bool {
        let user = username
        let pass = password
        network.login(params: ["username": user, "password": pass], completion: { response in
            guard let token = response["token"] else { return }
            guard let user = response["username"] else { return }
            
            self.keychain.set(token, forKey: "Token")
            self.defaults.set(user, forKey: "User")
            self.defaults.set(true, forKey: "LoggedIn")
            
        })
        
        if self.defaults.bool(forKey: "LoggedIn") {
            return true
        }
        return false
    }
    
}
