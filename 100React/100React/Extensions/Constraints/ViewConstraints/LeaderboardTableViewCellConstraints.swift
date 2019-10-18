//
//  LeaderboardTableViewCellConstraints.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

extension LeaderboardTableViewCell {
    
    func setupViewConstraints() {
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive =  true
        containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        usernameLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive =  true
        usernameLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 100).isActive = true
        usernameLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.25).isActive = true
        usernameLabel.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 0.5).isActive =  true
        
        
    }
    
    
}

