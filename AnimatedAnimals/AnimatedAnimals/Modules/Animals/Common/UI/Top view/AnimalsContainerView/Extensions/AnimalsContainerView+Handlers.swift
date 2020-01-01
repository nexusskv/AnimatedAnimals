//
//  AnimalsContainerView+Handlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView {
    
    /// ---> Function for handle selection of cell in collection view  <--- ///
    func handleScrolledView() {
        let indexOfMajorCell = IndexGetter.indexOfCell(animalsLayout, array: animalsArray)
        
        UIView.animate(withDuration: 0.75,
                       delay: 0,
                       options: .curveEaseInOut,
                       animations: {
            let indexPath = IndexPath(row: indexOfMajorCell, section: 0)
            
            self.animalsLayout.collectionView!.scrollToItem(at: indexPath,
                                                            at: .left,
                                                            animated: false)
        }, completion: { flag in
            NotificationCenter.default.post(name: NSNotification.Name("reloadLikedList"),
                                            object: nil,
                                            userInfo: ["index": indexOfMajorCell])
        })
    }
}
