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
    
    
    func setupUI() {
        
    }
    
    func setValues(_ object: AnimalObject) {
        iconImage.setUrl(object.url)
        
        animalTitle.text = object.name
        
        likesNumber.text = "\(object.likes)"
    }
}
