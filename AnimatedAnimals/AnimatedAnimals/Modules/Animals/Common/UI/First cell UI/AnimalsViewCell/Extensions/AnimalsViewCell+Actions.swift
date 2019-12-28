//
//  AnimalsViewCell+Actions.swift
//  AnimatedAnimals
//
//  Created by Rost on 25.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewCell {
    
    @IBAction func animalItemButtonTapped(_ sender: UIButton) {
        isHightlightTapped(true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.isHightlightTapped(false)
            
            if let type = AnimalsTypes(rawValue: sender.tag) {
                DataContainer.shared.selectedDetailType = type
            }
            
            NotificationCenter.default.post(name: showDetailsName, object: nil)
        }        
    }
}
