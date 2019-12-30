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
        dataTable.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: bottomInset, right: 0.0)
        
        dataTable.tag = topTableTag
        
        dataTable.sectionHeaderHeight = makeHeight(0)
        dataTable.sectionFooterHeight = makeHeight(1)
    }
    
    func makeDataSource() {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            DataContainer.shared.makeAnimals()
            
            DispatchQueue.global(qos: .userInitiated).async {                
                if let all = DataContainer.shared.allAnimals {
                    let animalsTypes = AnimalsTypes.getAllTypes()
                    
                    for type in animalsTypes {
                        let animals = all.filter { $0.type == type }
                        
                        strongSelf.dataArray.append(animals)
                    }
                }
                                
                DispatchQueue.main.async {
                    strongSelf.refreshDataTable()
                }
            }
        }
    }
    
    func refreshDataTable() {
        dataTable.reloadData()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            strongSelf.refreshLikesTable()
        }
    }
    
    
    func refreshLikesTable() {
        likesView.setValues(dataArray, at: selectedAnimal)
    }
    
    
    func makeView(_ table: UITableView, at index: Int) -> UIView {
        let customView = UIView()
        let bgRect = CGRect(x: 0.0, y: 0.0, width: UIScreen.main.bounds.size.width, height: makeHeight(index))
        customView.frame = bgRect
        
        switch index {
            case 0:
                let header = table.dequeueReusableCell(withIdentifier: "FirstTableCell") as! FirstTableCell
                header.frame = bgRect
                header.setValues(dataArray)
                
                customView.addSubview(header)
                return customView
            case 1:
                likesView = LikesView()
                likesView.frame = bgRect
                likesView.backgroundColor = .green

                customView.addSubview(likesView)
                                
                likesView.likesTable.frame = bgRect
                                
                return customView
            default:
                break
        }
        
        return UIView()
    }
    
    func makeHeight(_ index: Int) -> CGFloat {
        var height: CGFloat = 0.0        
        switch index {
            case 0:
                height = UIScreen.main.bounds.height / 2.6
            
            case 1:
                height = UIScreen.main.bounds.height / 2.0
            
            case 2:
                height = UIScreen.main.bounds.height - (UIScreen.main.bounds.height / 6.8)

            default:
                break
        }
        
        return height
    }
}
