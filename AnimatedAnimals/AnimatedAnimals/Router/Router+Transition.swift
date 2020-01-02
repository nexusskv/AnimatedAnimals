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
    
    /// ---> Function for make custom transition <--- ///
    static func makeTransition(_ type: TransitionType) -> CATransition {
        let transition              = CATransition()
        transition.duration         = 0.5
        transition.type             = .reveal
        transition.subtype          = .fromTop
        switch type {
            case .present:
                transition.timingFunction   = CAMediaTimingFunction(name: .default)
            case .dismiss:
                transition.timingFunction   = CAMediaTimingFunction(name: .easeInEaseOut)
        }
        
        return transition
    }
}
