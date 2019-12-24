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
        let bottomInset = UIScreen.main.bounds.height / 2.8
        dataTable.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: bottomInset, right: 0.0)
    }
    
    func makeDataSource() {
        DataContainer.shared.makeAnimals()
        
        if let all = DataContainer.shared.allAnimals {
            let animalsTypes = AnimalsTypes.getAllTypes()
            
            for type in animalsTypes {
                let animals = all.filter { $0.type == type }
                
                dataArray.append(animals)
            }
        }
        
        dataTable.reloadData()
    }
    
    func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        switch index.row {
            case 0:
                let cell = table.dequeueReusableCell(withIdentifier: "FirstTableCell",
                                                     for: index) as? FirstTableCell
                                
                cell?.setValues(dataArray)
                
                return cell ?? FirstTableCell()
            case 1:
                let cell = table.dequeueReusableCell(withIdentifier: "SecondTableCell",
                                                     for: index) as? SecondTableCell
                                
                cell?.setValues(dataArray)
                
                return cell ?? SecondTableCell()
            default:
                break
        }
        
        return UITableViewCell()
    }
    
    func makeHeight(_ index: Int) -> CGFloat {
        var height: CGFloat = 0.0        
        switch index {
            case 0:
                height = UIScreen.main.bounds.height / 2.6
            case 1:
                height = UIScreen.main.bounds.height / 2
            default:
                break
        }
        
        return height
    }
}
