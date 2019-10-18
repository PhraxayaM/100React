////
////  PersonalStatsCollectionViewController.swift
////  100React
////
////  Created by MattHew Phraxayavong on 10/18/19.
////  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class PersonalStatsCollectionViewController: UIViewController {
//
//weak var collectionView: personalStatsCollectionView!
//    
//    var  leaderboardView: LeaderboardView!
//    
//    var data: [Int] = Array(0..<10)
//   
//   override func loadView() {
//       super.loadView()
//
//       let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
//       collectionView.translatesAutoresizingMaskIntoConstraints = false
//       self.view.addSubview(collectionView)
//       NSLayoutConstraint.activate([
//           self.view.topAnchor.constraint(equalTo: collectionView.topAnchor),
//           self.view.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor),
//           self.view.leadingAnchor.constraint(equalTo: collectionView.leadingAnchor),
//           self.view.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor),
//        ])
//        self.collectionView = collectionView
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.collectionView.dataSource = self
//        self.collectionView.delegate = self
//        self.collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
//        self.collectionView.alwaysBounceVertical = true
//        self.collectionView.backgroundColor = .white
//    }
//}
//
