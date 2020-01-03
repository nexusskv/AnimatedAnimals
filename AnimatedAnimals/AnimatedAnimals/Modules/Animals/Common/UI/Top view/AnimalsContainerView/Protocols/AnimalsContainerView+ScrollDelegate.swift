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
    
    /// ---> Functions from scroll view delelgate protocol <--- ///
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        indexOfCellBeforeDragging = IndexGetter.indexOfCell(animalsLayout, array: animalsArray)
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        handleScrolledView()
    }
    
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            handleScrolledView()
        }
    }
}
