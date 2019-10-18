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
    
    var userStatsView: UserStatsView!
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
        addButtonTarget()
    }
    func setupTableView() {
        let LeaderView = LeaderboardView(frame: self.view.frame)
        self.leaderboardView = LeaderView
        self.view.addSubview(leaderboardView)
    }
    
    func addButtonTarget() {
        leaderboardView.userStatsButton.addTarget(self, action: #selector(userStatsTapped), for: .touchUpInside)
//        menuView.createSessionButton.addTarget(self, action: #selector(newSessionTapped), for: .touchUpInside)

    }
    
    @objc func leaderboardTapped() {
        let newSessionVC = UserRankingViewController()
        navigationController?.pushViewController(newSessionVC, animated: true)
    }
    
    @objc func userStatsTapped() {
        let newSessionVC = UserStatsViewController()
        navigationController?.pushViewController(newSessionVC, animated: true)
        
    }
}

