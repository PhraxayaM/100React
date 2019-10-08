//
//  IndividualSessionConstraints.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/7/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

extension IndividualSessionView {
    
    func setViewConstraints() {
        
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.2).isActive = true
        logoImageView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
        
        currentViewLabel.translatesAutoresizingMaskIntoConstraints = false
        currentViewLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100).isActive = true
        currentViewLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        titleFieldLabel.translatesAutoresizingMaskIntoConstraints = false
        titleFieldLabel.topAnchor.constraint(equalTo: currentViewLabel.bottomAnchor, constant: 50).isActive = true
        titleFieldLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        taskOneLabel.translatesAutoresizingMaskIntoConstraints = false
        taskOneLabel.topAnchor.constraint(equalTo: sessionTitleField.bottomAnchor, constant: 10).isActive = true
        taskOneLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true

        taskTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        taskTwoLabel.topAnchor.constraint(equalTo: taskOneField.bottomAnchor, constant: 15).isActive = true
        taskTwoLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        taskThreeLabel.translatesAutoresizingMaskIntoConstraints  = false
        taskThreeLabel.topAnchor.constraint(equalTo: taskTwoField.bottomAnchor, constant: 15).isActive = true
        taskThreeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        taskFourLabel.translatesAutoresizingMaskIntoConstraints = false
        taskFourLabel.topAnchor.constraint(equalTo: taskThreeField.bottomAnchor, constant: 15).isActive = true
        taskFourLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true

        sessionTitleField.translatesAutoresizingMaskIntoConstraints = false
        sessionTitleField.topAnchor.constraint(equalTo: currentViewLabel.bottomAnchor, constant: 100).isActive = true
        sessionTitleField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        sessionTitleField.widthAnchor.constraint(equalToConstant: 300).isActive  = true
        
        taskOneField.translatesAutoresizingMaskIntoConstraints = false
        taskOneField.topAnchor.constraint(equalTo: sessionTitleField.bottomAnchor, constant: 50).isActive = true
        taskOneField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        taskOneField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        taskTwoField.translatesAutoresizingMaskIntoConstraints = false
        taskTwoField.topAnchor.constraint(equalTo: taskOneField.bottomAnchor, constant: 50).isActive = true
        taskTwoField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        taskTwoField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        taskThreeField.translatesAutoresizingMaskIntoConstraints = false
        taskThreeField.topAnchor.constraint(equalTo: taskTwoField.bottomAnchor, constant: 50).isActive = true
        taskThreeField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        taskThreeField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        taskFourField.translatesAutoresizingMaskIntoConstraints = false
        taskFourField.topAnchor.constraint(equalTo: taskThreeField.bottomAnchor, constant: 50).isActive = true
        taskFourField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        taskFourField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.topAnchor.constraint(equalTo: taskFourField.bottomAnchor, constant: 30).isActive = true
//        deleteButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        deleteButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 100).isActive = true
        deleteButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        createButton.translatesAutoresizingMaskIntoConstraints = false
        createButton.topAnchor.constraint(equalTo: taskFourField.bottomAnchor, constant: 30).isActive = true
        createButton.leftAnchor.constraint(equalTo: deleteButton.rightAnchor, constant: 20).isActive = true
        createButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
}

