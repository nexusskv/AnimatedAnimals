//
//  AnimalsViewController+ObserversHandlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
    
    /// ---> Function for reload liked list <--- ///
    @objc func reloadLikedList(_ sender: NSNotification) {
        if let info = sender.userInfo {
            if let index = info["index"] as? Int {
                likeDetailsView.showView(false)
                
                selectedAnimal = index
                
                if let likes = view.viewWithTag(likesViewTag) as? LikesView {
                    likes.setValues(dataArray, at: selectedAnimal)
                }
            }
        }
    }
    
    
    /// ---> Function for show details view <--- ///
    @objc func showDetails(_ sender: NSNotification) {
        Router.present("Details", from: self)
    }
    
    
    /// ---> Function for show like details view <--- ///
    @objc func showLikeDetails(_ sender: NSNotification) {
        if let info = sender.userInfo {
            if let like = info["like"] as? AnimalObject {
                likeDetailsView.setValues(like)
                
                if likeDetailsView.alpha == 1.0 {
                    likeDetailsView.collapse()
                }
                
                likeDetailsView.expand()
            }
        }
    }
}
