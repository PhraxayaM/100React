//
//  MainMenuViewContraint.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/2/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import UIKit

extension MainMenuView {
    
    func setViewContraints() {
        
        
        
//        logoImageView.translatesAutoresizingMaskIntoConstraints = false
//        logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive =  true
//        logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
//        logoImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true
//        logoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.9).isActive  =  true
//        logoImageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor) .isActive = true
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints  = false
        welcomeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        createSessionButton.translatesAutoresizingMaskIntoConstraints =  false
        createSessionButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 100).isActive = true
        createSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        previousSessionButton.translatesAutoresizingMaskIntoConstraints = false
        previousSessionButton.topAnchor.constraint(equalTo: createSessionButton.bottomAnchor, constant: 100).isActive = true
        previousSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        
        
    }
    
    
    
    
}

