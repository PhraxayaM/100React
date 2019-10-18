//
//  PreviousSessionsDataSource.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/12/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class PreviousSessionsDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
        
    var viewModel: PreviousSessionsViewModel?
    var rowCount: Int?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return rowCount!
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell from the pool
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PreviousSessionsTableViewCell
        
        // Configure the cell...
		
		
     
		let task = viewModel!.previousSessions[indexPath.section]
		print(task)
		
		let input = task.createdAt
		let formatter = DateFormatter()
		formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
		if let date = formatter.date(from: input) {
			let formatter = DateFormatter()
			formatter.dateFormat = "MMM dd, yyyy"
			cell.sessionDateLabel.text = "Created: \(formatter.string(from: date))"
			print(date)  // Prints:  2018-12-10 06:00:00 +0000
		} else {
			formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
			if let newDate = formatter.date(from: input) {
				let formatter = DateFormatter()
				formatter.dateFormat = "MMM dd, yyyy"
				cell.sessionDateLabel.text = "Created: \(formatter.string(from: newDate))"
				print(newDate)  // Prints:  2018-12-10 06:00:00 +0000
			}
		}
		
		cell.sessionTitleLabel.text = task.title
        
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
		headerView.backgroundColor = .clear
		
		return headerView
	}
    
    
}
