//
//  LeaderboardViewController.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class LeaderboardViewController: UIViewController {
    
    var leaderboardView: LeaderboardView!
    let viewModel  = LeaderboardViewModel()
    let dataSource = LeaderboardDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
//        setupViewConstraints()
        
        dataSource.viewModel = viewModel
        viewModel.populatePreviousSessionsArray{
            self.dataSource.rowCount = self.viewModel.previousSessions.count
            
            DispatchQueue.main.async {
                self.leaderboardView.tableView.dataSource = self.dataSource
                self.leaderboardView.tableView.delegate = self.dataSource
                self.leaderboardView.tableView.register(LeaderboardTableViewCell.self, forCellReuseIdentifier: "cell")
                self.leaderboardView.tableView.reloadData()
                
            }
            
        }
    }
    
    
    func setup() {
        
        setupTableView()
    }
    func setupTableView() {
        let LeaderView = LeaderboardView(frame: self.view.frame)
        self.leaderboardView = LeaderView
        self.view.addSubview(leaderboardView)
//        view.addSubview(tableView)
    }
    
}

