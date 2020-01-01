//
//  AnimalsContainerView+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        cellMargin      = 10.0
        
        makeCollectionLayout()
    }
    
    
    /// ---> Function for set data source to collection view  <--- ///
    func setDataSource(_ objects: [[AnimalObject]]) {
        animalsArray = objects
        
        animalsView.reloadData()
    }
}
