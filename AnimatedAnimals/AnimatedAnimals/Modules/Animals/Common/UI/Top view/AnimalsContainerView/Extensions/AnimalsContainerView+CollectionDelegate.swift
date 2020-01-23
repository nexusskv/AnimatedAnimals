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

    /// ---> Functions from collection view data source protocol <--- ///
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalsArray.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = viewModel.makeCell(self, collection: collectionView, at: indexPath)
        
        return cell
    }    
}
