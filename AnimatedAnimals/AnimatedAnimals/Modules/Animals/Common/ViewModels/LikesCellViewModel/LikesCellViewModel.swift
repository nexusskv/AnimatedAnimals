//
//  LikesCellViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class LikesCellViewModel {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: LikesCell) {
        view.addSubview(view.iconImage)
        view.addSubview(view.animalTitle)
        view.addSubview(view.likesNumber)
        
        view.contentView.backgroundColor = .white
                
        view.iconImage.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 10, paddingBottom: 5, paddingRight: 0, width: 70, height: 70, enableInsets: false)
        
        view.animalTitle.anchor(top: view.topAnchor, left: view.iconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: view.frame.size.width - 20, height: 18, enableInsets: false)
        
        view.likesNumber.anchor(top: view.animalTitle.bottomAnchor, left: view.iconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: view.frame.size.width / 2, height: 14, enableInsets: false)
        
        view.iconImage.roundCorners(35.0, border: 0.6, color: .lightGray)
    }
    
    
    /// ---> Function for set values to UI <--- ///
    func setValues(_ view: LikesCell, object: AnimalObject) {
        view.iconImage.setUrl(object.url)
        
        view.animalTitle.text = object.name
        
        view.likesNumber.text = "\(object.likes)"
    }
}
