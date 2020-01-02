//
//  UIView+Collapse.swift
//  AnimatedAnimals
//
//  Created by Rost on 02.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    /// ---> Function for collapse view <--- ///
    func collapse() {
        UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseOut, animations: {
            self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            self.alpha = 0.0
        }, completion: { _ in
            self.transform = .identity
        })
    }
    
    
    /// ---> Function for expand view <--- ///
    func expand() {
        self.transform = .identity
        self.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        
        UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseInOut, animations: {
            self.alpha = 1.0
            self.transform = .identity
        })
    }
}
