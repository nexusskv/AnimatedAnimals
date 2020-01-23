//
//  AnimalsViewModel+Handlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewModel {
    
    /// ---> Function for change content on scroll view <--- ///
    func changeScrollViewContent(_ scroll: UIScrollView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                scroll.contentOffset.y = offsetY
            })
        }
    }
    
    
    /// ---> Function for handle scroll animation on scroll view <--- ///
    func handleDeceleratedScroll(_ view: AnimalsViewController, scroll: UIScrollView) {
        if scroll.tag == topTableTag {
            if scroll.contentOffset.y > 50 {
                let height = SizeMaker.makeHeight(.resizedFooter)
                
                if let likes = view.view.viewWithTag(likesViewTag) as? LikesView {
                    SizeMaker.changeTableFooter(height, table: view.dataTable, likes: likes)
                }
                
                changeScrollViewContent(scroll)
            }
            
            if scroll.contentOffset.y <= 0.0 {
                let height = SizeMaker.makeHeight(.footer)
                
                if let likes = view.view.viewWithTag(likesViewTag) as? LikesView {
                    SizeMaker.changeTableFooter(height, table: view.dataTable, likes: likes)
                }
            }
        }
    }
    
    
    /// ---> Function for handle reloadLikedList notification <--- ///
    func handleReloadLikedList(_ view: AnimalsViewController, info: [AnyHashable : Any]) {
        if let index = info["index"] as? Int {
            view.likeDetailsView.showView(false)
            
            view.selectedAnimal = index
            
            if let likes = view.view.viewWithTag(likesViewTag) as? LikesView, let model = likes.viewModel {
                model.setValues(likes, objects: view.dataArray, at: view.selectedAnimal)
            }
        }
    }
    
    
    /// ---> Function for handle showLikeDetails notification <--- ///
    func handleShowLikeDetails(_ view: AnimalsViewController, info: [AnyHashable : Any]) {
        if let like = info["like"] as? AnimalObject, let model = view.likeDetailsView.viewModel {
            model.setValues(view.likeDetailsView, object: like)

            if view.likeDetailsView.alpha == 1.0 {
                view.likeDetailsView.collapse()
            }
            
            view.likeDetailsView.expand()
        }
    }
}
