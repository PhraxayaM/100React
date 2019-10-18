//
//  LeaderboardView.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/16/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class LeaderboardView: UIView {
    let tableView = UITableView()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupView()
        setupViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView()  {
        backgroundColor = UIColor(named: "BackgroundColor")
        tableView.backgroundColor = backgroundColor
        addSubview(tableView)
        addSubview(logoImageView)

    }
    
    


    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "100ReactLogo")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    

    
}
