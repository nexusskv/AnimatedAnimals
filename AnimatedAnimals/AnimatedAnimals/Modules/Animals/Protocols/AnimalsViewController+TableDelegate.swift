//
//  AnimalsViewController+TableDelegate.swift
//  AnimatedAnimals
//
//  Created by Rost on 31.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController: UITableViewDelegate {
      
    /// ---> Functions from table view delegate <--- ///
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 1.0
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIMaker.makeAnimalsCellViews(tableView, array: dataArray, at: 0)
        
        return header
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIMaker.makeAnimalsCellViews(tableView, array: dataArray, at: 1)
        
        return footer
    }
}
