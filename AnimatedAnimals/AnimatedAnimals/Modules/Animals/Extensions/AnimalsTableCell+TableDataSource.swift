//
//  AnimalsViewController+TableDataSource.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController: UITableViewDataSource, UITableViewDelegate {
      
    /// ---> Table view data source and delegate functions <--- ///
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = makeCell(tableView, at: indexPath)
        let cell = UITableViewCell()
        let bg = UIView()
        bg.backgroundColor = .red
        cell.backgroundView = bg
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 1.0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = makeView(tableView, at: 0)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = makeView(tableView, at: 1)
        
        return footer
    }
}
