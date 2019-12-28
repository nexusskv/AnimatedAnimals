//
//  AnimalsViewCell+Setter.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewCell {
    
    func setupUI() {
        roundCorners(3.0, border: 0.4, color: .lightGray)
        
        layer.masksToBounds = false
        layer.shadowOpacity = 0.33
        layer.shadowRadius = 3
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.shadowColor = UIColor.black.cgColor
        layer.shouldRasterize = true
    }
    
    func setValues(_ object: AnimalObject, at index: Int) {
        iconImage.setUrl(object.url)
        
        animalTitle.text = object.name
        
        animalTitle.layer.shadowColor   = UIColor.black.cgColor
        animalTitle.layer.shadowRadius  = 3.0
        animalTitle.layer.shadowOpacity = 1.0
        animalTitle.layer.shadowOffset  = CGSize(width: 1, height: 1)
        animalTitle.layer.masksToBounds = false
        
        stampImage.layer.shadowColor   = UIColor.black.cgColor
        stampImage.layer.shadowRadius  = 3.0
        stampImage.layer.shadowOpacity = 1.0
        stampImage.layer.shadowOffset  = CGSize(width: 1, height: 1)
        stampImage.layer.masksToBounds = false
        
        animalButton.tag = index
    }
    
    func isHightlightTapped(_ flag: Bool) {
        if flag {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
        }
    }
}
