//
//  MainMenuController.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/3/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class MainMenuViewController: UIViewController {
    var menuView: MainMenuView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
//        addButtonTarget()
    }
    
    
    
    func setupView() {
        let mainView = MainMenuView(frame: self.view.frame)
        self.menuView = mainView
        self.view.addSubview(menuView)
        
//        setRecipeDetailsViewConstraints()
//    }
//
//    func addButtonTarget() {
//        loginView.loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
//    }
//
//    @objc func loginTapped() {
//        viewModel.loginTapped()
//    }
    

    
    
}
}
