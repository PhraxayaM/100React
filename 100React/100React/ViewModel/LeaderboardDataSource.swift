//
//  LeaderboardDataSource.swift
//  100React
//
//  Created by MattHew Phraxayavong on 10/17/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class LeaderboardDataSource: NSObject, UITableViewDataSource, UITableViewDelegate{
    
    var viewModel: LeaderboardViewModel?
    var rowCount: Int?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return rowCount!
    }
    
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a resusable cell from the pool
        let cell  =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LeaderboardTableViewCell
        
        let task = viewModel!.previousSessions[indexPath.section]
        cell.usernameLabel.text = task
        
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    
}

