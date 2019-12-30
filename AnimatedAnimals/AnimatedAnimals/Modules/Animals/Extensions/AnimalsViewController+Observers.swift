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
    }
    
    
    func removeObservers() {
        NotificationCenter.default.removeObserver(self)
    }
    
    
    @objc func reloadLikedList(_ sender: NSNotification) {
        if let info = sender.userInfo {
            if let index = info["index"] as? Int {
                selectedAnimal = index

                likesView.setValues(dataArray, at: selectedAnimal)
            }
        }
    }
    
    
    @objc func showDetails(_ sender: NSNotification) {
        Router.present("Details", from: self)
    }
}
