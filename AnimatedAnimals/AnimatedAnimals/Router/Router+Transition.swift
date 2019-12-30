//
//  Router+Transition.swift
//  AnimatedAnimals
//
//  Created by Rost on 28.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension Router {
    
    /// ---> Function for make custom transition same as push/pop <--- ///
    static func makeTransition(_ type: TransitionType) -> CATransition {
        let transition              = CATransition()
        transition.duration         = 0.5
        transition.type             = .reveal
        transition.subtype          = .fromTop
        switch type {
            case .push:
                transition.timingFunction   = CAMediaTimingFunction(name: .default)
            case .pop:
                transition.timingFunction   = CAMediaTimingFunction(name: .easeInEaseOut)
        }
        
        return transition
    }
}
