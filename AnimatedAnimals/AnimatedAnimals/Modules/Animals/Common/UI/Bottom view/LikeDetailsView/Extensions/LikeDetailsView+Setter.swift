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
        
        let gesturesArray: [SwipeTypes] = [.up, .down]
        for gesture in gesturesArray {
            let swipeGesture = UIMaker.makeSwipeGesture(self,
                                                        type: gesture,
                                                        selector: #selector(handleSwipe))
            addGestureRecognizer(swipeGesture)
        }
    }
    
    
    /// ---> Function for values to UI  <--- ///
    func setValues(_ object: AnimalObject) {
        animalImageView.setUrl(object.url)
        
        animalTitle.text = object.name
        
        animalLikes.text = "\(object.likes)"
    }
}
