//
//  ObserverManager.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class ObserverManager {
    
    /// ---> Function for add observers  <--- ///
    func addObservers(_ view: AnimalsViewController) {
        let defaultCenter = NotificationCenter.default
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.reloadLikedList),
                                  name: reloadListName,
                                  object: nil)
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.showDetails),
                                  name: showDetailsName,
                                  object: nil)
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.showLikeDetails),
                                  name: showLikeDetailsName,
                                  object: nil)
    }
    
    
    /// ---> Function for remove observers <--- ///
    func removeObservers(_ view: AnimalsViewController) {
        NotificationCenter.default.removeObserver(view)
    }
}
