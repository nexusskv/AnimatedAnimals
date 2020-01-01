//
//  UIView+ColoredView.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    /// ---> Function for make white view <--- ///
    static func makeWhiteView(_ rect: CGRect) -> UIView {
        let whiteView              = UIView()
        whiteView.frame            = rect
        whiteView.backgroundColor  = .white
        
        return whiteView
    }
}

