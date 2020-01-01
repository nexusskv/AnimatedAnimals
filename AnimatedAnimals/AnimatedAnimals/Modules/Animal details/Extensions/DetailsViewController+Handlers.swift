//
//  DetailsViewController+Handlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 28.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension DetailsViewController {
    
    /// ---> Function for handle swipe gesture <--- ///
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .up {
            Router.dismiss(self)
        }
    }
}
