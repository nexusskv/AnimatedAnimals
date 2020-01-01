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
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        roundCorners(3.0, border: 0.4, color: .lightGray)
        
        layer.masksToBounds     = false
        layer.shadowOpacity     = 0.33
        layer.shadowRadius      = 3
        layer.shadowOffset      = CGSize(width: 0, height: 0)
        layer.shadowColor       = UIColor.black.cgColor
        layer.shouldRasterize   = true
    }
    
    
    /// ---> Function for set values to UI  <--- ///
    func setValues(_ object: AnimalObject, at index: Int) {
        iconImage.setUrl(object.url)

        animalTitle.text = AnimalsTypes.getName(index)
        
        animalTitle.addBlackShadow()
        
        stampImage.addBlackShadow()
        
        animalButton.tag = index
    }
}
