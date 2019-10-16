//
//  LoginViewController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 9/30/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    var loginView: LoginView!
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
        addButtonTarget()
    }
    
    
    
    func setupView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        
    }
    

    
    func addButtonTarget() {
        loginView.loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
	
    
    @objc func loginTapped() {
        let user = loginView.usernameField.text!
        let pass = loginView.passwordField.text!
        
        let statusIndicator = StatusIndicatorViewController()
        statusIndicator.modalPresentationStyle = .overCurrentContext
        self.present(statusIndicator, animated: true)
		
		
        DispatchQueue.main.async {
            self.viewModel.loginTapped(username: user, password: pass){ success in
                if success == false {
					DispatchQueue.main.async {
						statusIndicator.statusView.activityIndicator.isHidden = true
						statusIndicator.statusView.titleLabel.text = "Login Failed: \nIncorrect Username/Password"
						statusIndicator.statusView.dismissButton.isHidden = false
						
						statusIndicator.statusView.dismissButton.addTarget(statusIndicator, action: #selector(statusIndicator.dismissAlert), for: .touchUpInside)
					}
					
                }
                
            }
            
        }
 
    }
    

    
    
}
