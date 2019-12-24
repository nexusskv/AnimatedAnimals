//
//  AnimalsContainerView+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView {
    
    func setupUI() {
        cellMargin = 10.0
    }
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ sender: UICollectionView, at index: IndexPath) -> UICollectionViewCell {
        let cell = sender.dequeueReusableCell(withReuseIdentifier: "AnimalsViewCell", for: index) as? AnimalsViewCell
        
        let animals = animalsArray[index.item]
        if let first = animals.first {
            cell?.setValues(first, at: index.item)
        }

        return cell ?? AnimalsViewCell()
    }

    
    /// ---> Function for present details view  <--- ///
    func presentDetails(_ index: Int) {

    }
}
