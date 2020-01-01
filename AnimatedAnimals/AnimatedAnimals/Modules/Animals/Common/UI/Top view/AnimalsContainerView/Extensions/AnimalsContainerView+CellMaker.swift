//
//  AnimalsContainerView+CellMaker.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView {
    
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ sender: UICollectionView, at index: IndexPath) -> UICollectionViewCell {
        let cell = sender.dequeueReusableCell(withReuseIdentifier: "AnimalsViewCell", for: index) as? AnimalsViewCell
        
        let animals = animalsArray[index.item]
        if let first = animals.first {
            cell?.setValues(first, at: index.item)
        }

        return cell ?? AnimalsViewCell()
    }
}
