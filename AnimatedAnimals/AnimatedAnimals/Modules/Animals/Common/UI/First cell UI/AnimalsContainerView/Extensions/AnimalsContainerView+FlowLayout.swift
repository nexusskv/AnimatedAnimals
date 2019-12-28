//
//  AnimalsContainerView+FlowLayout.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView {
    
    func sectionInset() -> CGFloat {
        let inset: CGFloat = 10.0
        return inset
    }
    
    func configCollectionLayout() {
        animalsLayout = UICollectionViewFlowLayout()
        animalsLayout.scrollDirection               = .horizontal
        animalsLayout.minimumLineSpacing            = sectionInset()
        animalsLayout.minimumInteritemSpacing       = sectionInset()
        
        let inset: CGFloat = sectionInset()
        animalsLayout.sectionInset = UIEdgeInsets(top: cellMargin, left: 0.0, bottom: cellMargin, right: inset)
        
        let width: CGFloat  = (UIScreen.main.bounds.width / 2.0) - 30.0
        let height: CGFloat = self.bounds.size.height - 60.0                
        animalsLayout.itemSize = CGSize(width: width, height: height)

        animalsView.setCollectionViewLayout(animalsLayout, animated: true)

        animalsView.contentInset = UIEdgeInsets(top: 0.0,
                                                left: 0.0,
                                                bottom: 0.0,
                                                right: width + (sectionInset() * CGFloat(animalsArray.count)))
        
        animalsView.reloadData()
    }
    
    func indexOfCell() -> Int {
        let itemWidth = animalsLayout.itemSize.width
        let proportionalOffset = (animalsLayout.collectionView!.contentOffset.x / itemWidth)
        let index = Int(round(proportionalOffset))
        let safeIndex = max(0, min(animalsArray.count - 1, index))
        
        return safeIndex
    }
}
