//
//  LeaderboardViewConstraints.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation

extension LeaderboardView {
    
    func setupViewConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
        
//        logoImageView.translatesAutoresizingMaskIntoConstraints = false
//        logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
//        logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        logoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.09).isActive = true
//        logoImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true
        
        
//        leaderboardsButton.translatesAutoresizingMaskIntoConstraints = false
//        leaderboardsButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50).isActive = true
//        leaderboardsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        leaderboardsButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
//        leaderboardsButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
//        leaderboardsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        leaderboardsButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
//        userStatsButton.translatesAutoresizingMaskIntoConstraints = false
//        userStatsButton.topAnchor.constraint(equalTo: leaderboardsButton.topAnchor).isActive = true
//        userStatsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        userStatsButton.leftAnchor.constraint(equalTo: leaderboardsButton.rightAnchor).isActive = true
//        userStatsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        userStatsButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
//
        
     }
    
}
