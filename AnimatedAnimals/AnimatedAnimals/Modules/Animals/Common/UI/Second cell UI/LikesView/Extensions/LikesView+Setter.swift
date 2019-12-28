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
    
    func setupUI() {
        likesTable = UITableView()
        likesTable.delegate = self
        likesTable.dataSource = self
        likesTable.tag = likesTableTag
        
        addSubview(likesTable)
        
        likesTable.register(LikesCell.self, forCellReuseIdentifier: "LikesCell")
    }
    
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
