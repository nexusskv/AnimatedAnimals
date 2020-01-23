//
//  AnimalsViewController+ObserverHandlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
    
    /// ---> Function for reload liked list <--- ///
    @objc func reloadLikedList(_ sender: NSNotification) {
        if let info = sender.userInfo {
            viewModel.handleReloadLikedList(self, info: info)
        }
    }
    
    
    /// ---> Function for show details view <--- ///
    @objc func showDetails(_ sender: NSNotification) {
        Router.present("Details", from: self)
    }
    
    
    /// ---> Function for show like details view <--- ///
    @objc func showLikeDetails(_ sender: NSNotification) {
        if let info = sender.userInfo {
            viewModel.handleShowLikeDetails(self, info: info)
        }
    }
}
