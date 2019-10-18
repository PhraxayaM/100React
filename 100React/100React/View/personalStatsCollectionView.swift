//
//  personalStatsCollectionView.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/18/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class personalStatsCollectionView: UICollectionViewCell {
    static var identifier: String = "Cell"
    
    weak var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
           let textLabel = UILabel(frame: .zero)
                textLabel.translatesAutoresizingMaskIntoConstraints = false
                self.contentView.addSubview(textLabel)
                NSLayoutConstraint.activate([
                    self.contentView.centerXAnchor.constraint(equalTo: textLabel.centerXAnchor),
                    self.contentView.centerYAnchor.constraint(equalTo: textLabel.centerYAnchor),
                ])
                self.textLabel = textLabel
                self.reset()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        override func prepareForReuse() {
            super.prepareForReuse()
            self.reset()
        }
    
        func reset() {
            self.textLabel.textAlignment = .center
        }
    
    
}

//class personalStatsCollectionView: UICollectionViewCell {
//
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        self.reset()
//    }
//
//    func reset() {
//        self.textLabel.textAlignment = .center
//    }
//}
