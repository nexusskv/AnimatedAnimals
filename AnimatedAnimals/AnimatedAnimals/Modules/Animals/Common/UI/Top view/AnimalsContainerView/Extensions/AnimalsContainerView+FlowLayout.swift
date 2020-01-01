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

    /// ---> Function for make custom layout for collection view  <--- ///
    func makeCollectionLayout() {
        animalsLayout = UICollectionViewFlowLayout()
        animalsLayout.scrollDirection               = .horizontal
        animalsLayout.minimumLineSpacing            = sectionInset
        animalsLayout.minimumInteritemSpacing       = sectionInset

        animalsLayout.sectionInset = UIEdgeInsets(top: cellMargin,
                                                  left: 0.0,
                                                  bottom: cellMargin,
                                                  right: sectionInset)
        
        let width: CGFloat      = (UIScreen.main.bounds.width / 2.0) - 20.0
        let height: CGFloat     = self.bounds.size.height - 90.0
        animalsLayout.itemSize  = CGSize(width: width, height: height)

        animalsView.contentInset = UIEdgeInsets(top: 0.0,
                                                left: 0.0,
                                                bottom: 0.0,
                                                right: width + (sectionInset * CGFloat(animalsArray.count)))
        
        animalsView.setCollectionViewLayout(animalsLayout, animated: true)
    }
}
