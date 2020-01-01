//
//  IndexGetter.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class IndexGetter {
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    static func indexOfCell(_ layout: UICollectionViewFlowLayout, array: [[AnimalObject]]) -> Int {
        let itemWidth           = layout.itemSize.width
        let proportionalOffset  = (layout.collectionView!.contentOffset.x / itemWidth)
        let roundedIndex        = Int(round(proportionalOffset))
        let resultIndex         = max(0, min(array.count - 1, roundedIndex))
        
        return resultIndex
    }
}
