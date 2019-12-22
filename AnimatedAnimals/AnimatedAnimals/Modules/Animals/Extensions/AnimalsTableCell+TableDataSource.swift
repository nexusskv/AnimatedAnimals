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
        let cell = makeCell(tableView, at: indexPath)

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height: CGFloat = UIScreen.main.bounds.height / 2.0
        
        switch indexPath.row {
            case 0:
                height -= 30.0
                print(height)
                
                return height
            case 1:
                height += 30.0
                print(height)
                
                return height
            default:
                break
        }
        
        return 0.0
    }
}
