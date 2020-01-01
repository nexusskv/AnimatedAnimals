//
//  UIView+Shadow.swift
//  AnimatedAnimals
//
//  Created by Rost on 31.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    /// ---> Function for add black shadow to view  <--- ///
    func addBlackShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowRadius  = 3.0
        layer.shadowOpacity = 1.0
        layer.shadowOffset  = CGSize(width: 1, height: 1)
        layer.masksToBounds = false
    }
}
