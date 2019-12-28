//
//  AnimalsContainerView+ScrollDelegate.swift
//  AnimatedAnimals
//
//  Created by Rost on 24.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsContainerView: UIScrollViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        //if scrollView.tag == topCollectionTag {
            indexOfCellBeforeDragging = indexOfCell()
        //}
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //if scrollView.tag == topCollectionTag && decelerate {
            scrollView.isScrollEnabled = false
        //}
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {

        //if scrollView.tag == topCollectionTag {
            targetContentOffset.pointee = scrollView.contentOffset      // Stop scrollView sliding:
                    
            let indexOfMajorCell = indexOfCell()                        // calculate where scrollView should snap to:

            UIView.animate(withDuration: 0.55, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: velocity.x, options: .curveEaseInOut, animations: {
                    let indexPath = IndexPath(row: indexOfMajorCell, section: 0)

                    self.animalsLayout.collectionView!.scrollToItem(at: indexPath,
                                                                    at: .centeredHorizontally,
                                                                    animated: false)
                }, completion: { flag in
                    NotificationCenter.default.post(name: NSNotification.Name("reloadLikedList"),
                                                    object: nil,
                                                    userInfo: ["index": indexOfMajorCell])
                    
                    scrollView.isScrollEnabled = true
            })
        //}
    }
}
