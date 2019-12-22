//
//  AnimalsViewController+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
    
    func setupUI() {
        
    }
    
    func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        switch index.row {
            case 0:
                let cell = table.dequeueReusableCell(withIdentifier: "FirstTableCell",
                                                     for: index) as? FirstTableCell
                                
                //cell?.setCellValues(object, index: index.row)
                
                return cell ?? FirstTableCell()
            case 1:
                let cell = table.dequeueReusableCell(withIdentifier: "SecondTableCell",
                                                     for: index) as? SecondTableCell
                                
                //cell?.setCellValues(object, index: index.row)
                
                return cell ?? SecondTableCell()
            default:
                break
        }
        
        return UITableViewCell()
    }
}
