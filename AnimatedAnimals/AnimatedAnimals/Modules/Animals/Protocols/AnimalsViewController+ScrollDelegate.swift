//
//  AnimalsViewController+ScrollDelegate.swift
//  AnimatedAnimals
//
//  Created by Rost on 25.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController: UIScrollViewDelegate {
    
    /// ---> Functions from scroll view delegate protocol <--- ///
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        handleDeceleratedScroll(scrollView)
    }

    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            handleDeceleratedScroll(scrollView)
        }
    }
}
