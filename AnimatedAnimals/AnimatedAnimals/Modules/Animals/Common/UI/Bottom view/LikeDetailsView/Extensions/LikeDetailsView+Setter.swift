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
        titleImageView.addBlackShadow()
        likesImageView.addBlackShadow()
        animalTitle.addBlackShadow()
        animalLikes.addBlackShadow()

        self.addCustomShadow()
        
        roundCorners(7.0, border: 1.8, color: .darkGray)
        
        let swipeUp = UIMaker.makeSwipeUp(self, and: #selector(handleSwipe))
        addGestureRecognizer(swipeUp)
    }
    
    
    /// ---> Function for values to UI  <--- ///
    func setValues(_ object: AnimalObject) {
        animalImageView.setUrl(object.url)
        
        animalTitle.text = object.name
        
        animalLikes.text = "\(object.likes)"
    }
}
