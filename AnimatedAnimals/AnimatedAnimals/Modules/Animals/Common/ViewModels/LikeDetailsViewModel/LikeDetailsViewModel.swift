//
//  LikeDetailsViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class LikeDetailsViewModel {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: LikeDetailsView) {
        view.titleImageView.addBlackShadow()
        view.likesImageView.addBlackShadow()
        view.animalTitle.addBlackShadow()
        view.animalLikes.addBlackShadow()

        view.addCustomShadow()
        
        view.roundCorners(7.0, border: 1.8, color: .darkGray)
        
        let gesturesArray: [SwipeTypes] = [.up, .down]
        for gesture in gesturesArray {
            let swipeGesture = UIMaker.makeSwipeGesture(view,
                                                        type: gesture,
                                                        selector: #selector(view.handleSwipe))
            view.addGestureRecognizer(swipeGesture)
        }
    }
    
    
    /// ---> Function for values to UI  <--- ///
    func setValues(_ view: LikeDetailsView, object: AnimalObject) {
        view.animalImageView.setUrl(object.url)
        
        view.animalTitle.text = object.name
        
        view.animalLikes.text = "\(object.likes)"
    }
}
