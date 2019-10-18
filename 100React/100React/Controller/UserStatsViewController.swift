//
//  UserStatsViewController.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/18/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class UserStatsViewController: UIViewController {
    
    var statsView: UserStatsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView() {
        let mainView = UserStatsView(frame: self.view.frame)
        self.statsView = mainView
        self.view.addSubview(statsView)
        
    }
    
    
}
