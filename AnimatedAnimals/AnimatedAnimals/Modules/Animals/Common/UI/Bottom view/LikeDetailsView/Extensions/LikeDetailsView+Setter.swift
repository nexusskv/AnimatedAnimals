//
//  LikeDetailsView+Setter.swift
//  AnimatedAnimals
//
//  Created by Rost on 30.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension LikeDetailsView {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        animalTitle.addBlackShadow()
        animalLikes.addBlackShadow()

        layer.masksToBounds     = false
        layer.shadowOpacity     = 0.33
        layer.shadowRadius      = 4
        layer.shadowOffset      = CGSize(width: 1, height: 1)
        layer.shadowColor       = UIColor.black.cgColor
        layer.shouldRasterize   = true
        
        roundCorners(7.0, border: 0.8, color: .darkGray)
        
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(handleTap))
        addGestureRecognizer(tapGesture)
    }
    
    
    /// ---> Function for values to UI  <--- ///
    func setValues(_ object: AnimalObject) {
        animalImageView.setUrl(object.url)
        
        animalTitle.text = object.name
        
        animalLikes.text = "\(object.likes)"
    }
}
