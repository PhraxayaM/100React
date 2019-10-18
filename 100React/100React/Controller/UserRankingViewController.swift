//
//  UserRankingViewController.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/18/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class UserRankingViewController: UIViewController {
    
    var userRankingView: UserRankingView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNav()
//        setupViewConstraints()
        
    }
    func setupNav() {
        navigationItem.title = "Previous Sessions"
    
        let logo = UIImage(named: "100ReactLogo")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
    
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoBtn)
    }
    
    
    func setupView() {
        let SessionView = UserRankingView(frame: self.view.frame)
        self.userRankingView = SessionView
        self.view.addSubview(userRankingView)
    }
}
//func setupNav() {
//    navigationItem.title = "Previous Sessions"
//
//    let logo = UIImage(named: "100ReactLogo")?.withRenderingMode(.alwaysOriginal)
//    let logoBtn = UIButton(type: .system)
//    logoBtn.isUserInteractionEnabled = false
//    logoBtn.setImage(logo, for: .normal)
//    logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
//    logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
//
//    navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoBtn)
//}
//
//func setupView() {
//    let SessionView = PreviousSessionsView(frame: self.view.frame)
//    self.previousSessionsView = SessionView
//    self.view.addSubview(previousSessionsView)
//}
