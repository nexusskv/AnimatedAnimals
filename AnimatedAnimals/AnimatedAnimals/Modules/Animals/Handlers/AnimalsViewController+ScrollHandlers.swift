//
//  AnimalsViewController+ScrollHandlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
    
    /// ---> Function for change content on scroll view <--- ///
    func changeScrollViewContent(_ scroll: UIScrollView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                scroll.contentOffset.y = offsetY
            })
        }
    }
    
    
    /// ---> Function for handle drag on scroll view <--- ///
    func handleDragOrScroll(_ scroll: UIScrollView) {
        if scroll.tag == topTableTag {
            if scroll.contentOffset.y > bottomInset {
                changeScrollViewContent(scroll)
            }
        }
    }
    
    
    /// ---> Function for handle scroll animation on scroll view <--- ///
    func handleDeceleratedScroll(_ scroll: UIScrollView) {
        if scroll.tag == topTableTag {
            if scroll.contentOffset.y > offsetY &&
                scroll.contentOffset.y < bottomInset {
                let height = SizeMaker.makeHeight(.resizedFooter)
                
                SizeMaker.makeTableHeight(height, table: dataTable, likes: likesView)
                
                changeScrollViewContent(scroll)
            } else if scroll.contentOffset.y == 0.0 {
                let height = SizeMaker.makeHeight(.footer)
                
                SizeMaker.makeTableHeight(height, table: dataTable, likes: likesView)
            }
        }
    }    
}
