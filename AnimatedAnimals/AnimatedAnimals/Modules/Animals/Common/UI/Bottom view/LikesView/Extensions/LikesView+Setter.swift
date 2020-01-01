//
//  LikesView+Setter.swift
//  AnimatedAnimals
//
//  Created by Rost on 27.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension LikesView {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        backgroundColor  = .white
        
        likesTable = UITableView()
        likesTable.delegate     = self
        likesTable.dataSource   = self
        
        likesTable.backgroundColor  = .white
        likesTable.separatorColor   = .clear
        likesTable.separatorStyle   = .none
        likesTable.tableFooterView  = UIView()

        addSubview(likesTable)
        
        likesTable.register(LikesCell.self, forCellReuseIdentifier: "LikesCell")
    }
    
    
    /// ---> Function for set values to UI <--- ///
    func setValues(_ objects: [[AnimalObject]], at index: Int) {
        likesArray = objects[index]
        
        let range = NSMakeRange(0, likesTable.numberOfSections)
        let sections = NSIndexSet(indexesIn: range)
        
        likesTable.reloadSections(sections as IndexSet, with: .fade)
        likesTable.scrollToRow(at: IndexPath(row: 0, section: 0),
                               at: .top,
                               animated: false)
    }
}
