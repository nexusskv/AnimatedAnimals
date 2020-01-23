//
//  AnimalsViewCellViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AnimalsViewCellViewModel {
    
    /// ---> Function for set values to UI  <--- ///
    func setValues(_ cell: AnimalsViewCell, object: AnimalObject, at index: Int) {
        cell.iconImage.setUrl(object.url)

        cell.animalTitle.text = AnimalsTypes.getName(index)
        
        cell.animalTitle.addBlackShadow()
        
        cell.stampImage.addBlackShadow()
        
        cell.animalButton.tag = index
    }
    
    
    /// ---> Function for handle tap by itemButton  <--- ///
    func handleItemButtonTap(_ cell: AnimalsViewCell, button: UIButton) {
        cell.scaledView(true, by: .collectionCell)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            cell.scaledView(false, by: .collectionCell)
            
            if let type = AnimalsTypes(rawValue: button.tag) {
                DataContainer.shared.selectedDetailType = type
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                NotificationCenter.default.post(name: showDetailsName,
                                                object: nil)
            }
        } 
    }
}
