//
//  AnimalsViewController+Observers.swift
//  AnimatedAnimals
//
//  Created by Rost on 25.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
    
    func addObservers() {
        let defaultCenter = NotificationCenter.default
        
        defaultCenter.addObserver(self,
                                  selector: #selector(reloadLikedList),
                                  name: reloadListName,
                                  object: nil)
        
        defaultCenter.addObserver(self,
                                  selector: #selector(showDetails),
                                  name: showDetailsName,
                                  object: nil)
        
        defaultCenter.addObserver(self,
                                  selector: #selector(showLikeDetails),
                                  name: showLikeDetailsName,
                                  object: nil)
    }
    
    
    func removeObservers() {
        NotificationCenter.default.removeObserver(self)
    }
}
