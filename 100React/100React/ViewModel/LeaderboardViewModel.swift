//
//  LeaderboardViewModel.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class LeaderboardViewModel {
    
    let network = NetworkingService()
    let defaults = UserDefaults.standard
    
    
    var previousSessions =  [String]()

    func populatePreviousSessionsArray(completion: @escaping ()->()) {
        let userID = self.defaults.integer(forKey: "UserID")
        network.getPreviousSessions(userID: userID){ response in
            print(response)
            for item in response {
                self.previousSessions.append(item["title"] as! String)
            }
            print(self.previousSessions)
            completion()
        }
    }
    
    func rowsPerSection() -> Int {
        return self.previousSessions.count
    }
}
