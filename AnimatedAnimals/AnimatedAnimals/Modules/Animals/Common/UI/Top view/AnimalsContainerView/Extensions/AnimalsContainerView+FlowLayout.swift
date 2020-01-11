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
        
        var width: CGFloat      = (UIScreen.main.bounds.width / 2.0) - 20.0
        var height: CGFloat     = self.bounds.size.height - 90.0
        
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
                case 1334:
                    width  = (UIScreen.main.bounds.width / 2.0) - 60.0
                    height = self.bounds.size.height - 150.0

                case 1920, 2208:
                    width  = (UIScreen.main.bounds.width / 2.0) - 40.0
                    height = self.bounds.size.height - 110.0

                default:
                    break
                }
        }
        
        animalsLayout.itemSize  = CGSize(width: width, height: height)

        animalsView.contentInset = UIEdgeInsets(top: 0.0,
                                                left: 0.0,
                                                bottom: 0.0,
                                                right: width + (sectionInset * CGFloat(animalsArray.count)))
        
        animalsView.setCollectionViewLayout(animalsLayout, animated: true)
    }
}
