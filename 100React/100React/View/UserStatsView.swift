//
//  UserStatsView.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
//
class UserStatsView: UIView {

    override init(frame: CGRect) {
        super .init(frame: frame)
          
          setupView()
          setupViewConstraints()
      }
 
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

    func setupView() {
        backgroundColor = UIColor(named: "BackgroundColor")
        addSubview(logoImageView)
        addSubview(leaderboardsButton)
        addSubview(userStatsButton)
        addSubview(userRankingButton)
        addSubview(backCellBackgroundLabel)
        
    }

    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "100ReactLogo")

        return imageView
    }()
    
    let leaderboardsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(cgColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Leaderboards", attributes: [NSMutableAttributedString.Key.font: UIFont.systemFont(ofSize: 15), .foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
        
    }()
    
    let userStatsButton: UIButton  = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "User Stats", attributes: [NSMutableAttributedString.Key.font: UIFont.systemFont(ofSize: 15), .foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
        
    }()
    
    let userRankingButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(cgColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "User Ranking", attributes: [NSMutableAttributedString.Key.font: UIFont.systemFont(ofSize: 15), .foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
        
    }()
    
    
//    let backCellBackgroundLabel: UILabel = {
//        let label = UILabel()
//        label.backgroundColor = UIColor(cgColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
//
//        return label
//
//    }()
    let backCellBackgroundLabel: UIImageView = {

    let imageView = UIImageView()
    imageView.image = UIImage(named: "Static")

    return imageView
    


    }()
}
