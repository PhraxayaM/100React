//
//  LeaderboardTableViewCell.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import UIKit

class LeaderboardTableViewCell: UITableViewCell {

    let usernameLabel: UILabel = {
        let label = UILabel()
        
        
        return label
        
    }()
    
    let containerView: UIView = {
        let view = UIView()
            
        
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(containerView)
        self.containerView.addSubview(usernameLabel)
        self.preservesSuperviewLayoutMargins = false
        self.separatorInset = UIEdgeInsets.zero
        self.layoutMargins = UIEdgeInsets.zero
        setupViewConstraints()
        layoutSubviews()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
   
        self.layer.cornerRadius = 15
        self.contentView.layer.borderWidth = 7.5
        layer.masksToBounds = true
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 15).cgPath
    }
    
    
    
    
}
