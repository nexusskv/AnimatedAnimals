//
//  UIView+Fade.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    
    func showView(_ flag: Bool) {
        if flag {
            UIView.animate(withDuration: 0.8,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                self.alpha = 1.0
                self.layoutSubviews()
            })
        } else {
            var viewRect = frame
            viewRect.size = .zero
            
            UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseOut, animations: {
                self.frame = viewRect
                self.alpha = 0.0
            })
        }
    }
}
