//
//  LikesCell+Setter.swift
//  AnimatedAnimals
//
//  Created by Rost on 25.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension LikesCell {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        addSubview(iconImage)
        addSubview(animalTitle)
        addSubview(likesNumber)
        
        contentView.backgroundColor = .white
                
        iconImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 10, paddingBottom: 5, paddingRight: 0, width: 70, height: 70, enableInsets: false)
        
        animalTitle.anchor(top: topAnchor, left: iconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width - 20, height: 18, enableInsets: false)
        
        likesNumber.anchor(top: animalTitle.bottomAnchor, left: iconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 14, enableInsets: false)
        
        iconImage.roundCorners(35.0, border: 0.6, color: .lightGray)
    }
    
    
    /// ---> Function for set values to UI <--- ///
    func setValues(_ object: AnimalObject) {
        iconImage.setUrl(object.url)
        
        animalTitle.text = object.name
        
        likesNumber.text = "\(object.likes)"
    }
}
