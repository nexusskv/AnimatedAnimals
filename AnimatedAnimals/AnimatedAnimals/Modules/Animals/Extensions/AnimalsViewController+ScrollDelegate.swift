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
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)

        if scrollView.tag == topTableTag {
            if scrollView.contentOffset.y > bottomInset - 25.0 &&
                scrollView.contentOffset.y < bottomInset {
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseInOut, animations: {
                    let height = self.makeHeight(2)
                    
                    var rect = self.likesView.frame
                    rect.size.height = height
                    self.likesView.frame = rect
                    self.likesView.likesTable.frame = rect
                    
                    self.dataTable.sectionFooterHeight = height
                })
            } else if scrollView.contentOffset.y == 0.0 {
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseOut, animations: {
                    let height = self.makeHeight(1)
                    var rect = self.likesView.frame
                    rect.size.height = height
                    self.likesView.frame = rect
                    self.likesView.likesTable.frame = rect
                    
                    self.dataTable.sectionFooterHeight = height
                })
            }
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.tag == topTableTag {
            if scrollView.contentOffset.y > bottomInset {
                UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseOut, animations: {
                    scrollView.contentOffset.y = self.bottomInset - 35.0
                })
            }
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        if scrollView.tag == topTableTag {
            if scrollView.contentOffset.y > bottomInset {
                UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseOut, animations: {
                    scrollView.contentOffset.y = self.bottomInset - 35.0
                })
            }
        }
    }
}
