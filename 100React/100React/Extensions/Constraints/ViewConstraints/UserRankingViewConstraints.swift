//
//  UserRankingViewConstraints.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/18/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation

extension UserRankingView {
    
    func setupViewConstraints() {
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.09).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true
        
        
        leaderboardsButton.translatesAutoresizingMaskIntoConstraints = false
        leaderboardsButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50).isActive = true
        leaderboardsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        leaderboardsButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        leaderboardsButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -280).isActive = true
        leaderboardsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        leaderboardsButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        userStatsButton.translatesAutoresizingMaskIntoConstraints = false
        userStatsButton.topAnchor.constraint(equalTo: leaderboardsButton.topAnchor).isActive = true
        userStatsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        userStatsButton.leftAnchor.constraint(equalTo: leaderboardsButton.rightAnchor, constant: 0).isActive = true
        userStatsButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -270).isActive = true
        userStatsButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        userStatsButton.widthAnchor.constraint(equalToConstant: 100).isActive = true

//        userRankingButton.translatesAutoresizingMaskIntoConstraints = false
//        userRankingButton.topAnchor.constraint(equalTo: leaderboardsButton.topAnchor).isActive = true
//        userRankingButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
////        userRankingButton.leftAnchor.constraint(equalTo: userStatsButton.rightAnchor, constant: 100).isActive = true
//        userRankingButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
//        userRankingButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        userRankingButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
//
     }
    
}
