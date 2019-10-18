//
//  PreviousSessionsViewModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/12/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class PreviousSessionsViewModel {
    
    let network = NetworkingService()
    let defaults = UserDefaults.standard
    
    
    var previousSessions =  Sessions()

    func populatePreviousSessionsArray(completion: @escaping ()->()) {
        let userID = self.defaults.integer(forKey: "UserID")
        network.getPreviousSessions(userID: userID){ response in
            for item in response {
                self.previousSessions.append(item)
            }
            completion()
        }
    }
    
    func rowsPerSection() -> Int {
        return self.previousSessions.count
    }
    
}
