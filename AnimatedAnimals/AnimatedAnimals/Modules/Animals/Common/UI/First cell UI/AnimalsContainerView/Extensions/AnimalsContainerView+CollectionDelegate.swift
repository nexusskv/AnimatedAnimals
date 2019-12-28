//
//  AnimalsContainerView+CollectionDelegate.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView: UICollectionViewDataSource {

    /// ---> Fucntion of collection view data source protocol <--- ///
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalsArray.count
    }
    
    
    /// ---> Fucntion of collection view data source protocol <--- ///
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = makeCell(collectionView, at: indexPath)
        
        return cell
    }    
}
