//
//  StatusIndicatorView.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/15/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class StatusIndicatorView: UIView {
    
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          setupView()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .clear
        setupSubViews()
        setViewConstraints()
    }
    
    func setupSubViews() {
        addSubview(holdingFrame)
        holdingFrame.addSubview(titleLabel)
        holdingFrame.addSubview(activityIndicator)
		holdingFrame.addSubview(dismissButton)
    }
    
    let holdingFrame: UIView = {
        let frame = UIView()
        frame.backgroundColor = UIColor(white: 0.95, alpha: 0.95)
        frame.layer.cornerRadius = 10
        return frame
    }()
    
    
    
    let titleLabel: UITextView = {
        let label = UITextView()
		label.backgroundColor = .clear
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text =  "Logging In"
        label.textAlignment = .center

        
        return label
    }()
    
    let activityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.style = .large
        indicator.startAnimating()
        
        return indicator
    }()
	
	let dismissButton: UIButton = {
		let button = UIButton()
		button.backgroundColor = UIColor(named: "ButtonColor")
		let buttonText = NSMutableAttributedString(attributedString: NSMutableAttributedString(string: "Dismiss", attributes: [NSMutableAttributedString.Key.font:UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")!]))
		button.setAttributedTitle(buttonText, for: .normal)
		
		button.isHidden = true
		
		return button
	}()
    
    
    
    
}
