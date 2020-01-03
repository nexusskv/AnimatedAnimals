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
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                scroll.contentOffset.y = offsetY
            })
        }
    }
    
    
    /// ---> Function for handle scroll animation on scroll view <--- ///
    func handleDeceleratedScroll(_ scroll: UIScrollView) {
        if scroll.tag == topTableTag {            
            if scroll.contentOffset.y > 50 {
                let height = SizeMaker.makeHeight(.resizedFooter)
                
                if let likes = view.viewWithTag(likesViewTag) as? LikesView {
                    SizeMaker.changeTableFooter(height, table: dataTable, likes: likes)
                }
                
                changeScrollViewContent(scroll)
            }
            
            if scroll.contentOffset.y <= 0.0 {
                let height = SizeMaker.makeHeight(.footer)
                
                if let likes = view.viewWithTag(likesViewTag) as? LikesView {
                    SizeMaker.changeTableFooter(height, table: dataTable, likes: likes)
                }
            }
        }
    }    
}
