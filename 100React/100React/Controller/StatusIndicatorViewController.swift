//
//  StatusIndicatorViewController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/15/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class StatusIndicatorViewController: UIViewController {
    var statusView: StatusIndicatorView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
    }
    
    
    
    func setupView() {
        let mainView = StatusIndicatorView(frame: self.view.frame)
        self.statusView = mainView
        self.view.addSubview(statusView)
        
    }
	
	@objc func dismissAlert() {
		self.dismiss(animated: true)
	}
    
    
}
