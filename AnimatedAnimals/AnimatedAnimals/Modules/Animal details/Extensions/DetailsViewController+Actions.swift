//
//  DetailsViewController+Actions.swift
//  AnimatedAnimals
//
//  Created by Rost on 28.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension DetailsViewController {
    
    @objc func swipeReceived(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .up {
            Router.dismiss(self)
        }
    }
}
