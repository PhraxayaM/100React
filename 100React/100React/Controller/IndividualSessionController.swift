//
//  IndividualSessionController.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/7/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class IndividualSessionController: UIViewController {
    var individualSessionViewer: IndividualSessionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    func setup() {
        setupView()
        setupNav()
    }
    
    func setupNav() {
        navigationItem.title = "New Session"
        
        let logo = UIImage(named: "100ReactLogo")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoBtn)
    }
    
    func setupView() {
        let SessionView = IndividualSessionView(frame: self.view.frame)
        self.individualSessionViewer = SessionView
        self.view.addSubview(individualSessionViewer)
    }
    
    
}


//    func setupView() {
//        let SessionView = CreateNewSessionView(frame: self.view.frame)
//        self.newSessionView = SessionView
//        self.view.addSubview(newSessionView)
//}
