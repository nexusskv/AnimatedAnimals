//
//  UIView+HighlightZoom.swift
//  AnimatedAnimals
//
//  Created by Rost on 31.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    func isViewHightlighted(_ flag: Bool, by type: CellTypes) {
        var scale: CGFloat = 0.0
        
        switch type {
            case .collectionCell:
                scale  = 0.95
            case .tableCell:
                scale  = 0.90
        }
        
        if flag {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.transform = CGAffineTransform(scaleX: scale, y: scale)
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }
}
