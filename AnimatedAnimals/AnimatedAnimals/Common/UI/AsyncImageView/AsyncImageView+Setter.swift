//
//  AsyncImageView+Setter.swift
//  AnimatedAnimals
//
//  Created by Rost on 25.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AsyncImageView {
    
    /// ---> Function for set url to image view <--- ///
    func setUrl(_ value: String) {
        let holderImage = UIImage(named: "animal_holder")
        if !value.isEmpty {
            self.loadAsync(value, placeholder: holderImage)
        } else {
            self.image = holderImage
        }
    }
}
