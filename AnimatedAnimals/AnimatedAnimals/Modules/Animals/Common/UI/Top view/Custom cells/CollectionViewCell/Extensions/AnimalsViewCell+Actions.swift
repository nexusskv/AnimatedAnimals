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
    
    /// ---> Action of animal item  <--- ///
    @IBAction func animalItemButtonTapped(_ sender: UIButton) {
        scaledView(true, by: .collectionCell)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.scaledView(false, by: .collectionCell)
            
            if let type = AnimalsTypes(rawValue: sender.tag) {
                DataContainer.shared.selectedDetailType = type
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                NotificationCenter.default.post(name: showDetailsName,
                                                object: nil)
            }
        }        
    }
}
