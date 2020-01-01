//
//  TopTableCell+Setter.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension TopTableCell {
    
    /// ---> Function for set values to UI  <--- ///
    func setValues(_ objects: [[AnimalObject]]) {
        containerView.setDataSource(objects)
    }
}
