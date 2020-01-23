//
//  DetailsViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class DetailsViewModel {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: DetailsViewController) {
        view.aboutWebView.navigationDelegate = view
        
        let gesturesArray: [SwipeTypes] = [.left, .right, .up]
        for gesture in gesturesArray {
            let swipeGesture = UIMaker.makeSwipeGesture(view,
                                                        type: gesture,
                                                        selector: #selector(view.handleSwipe))
            view.view.addGestureRecognizer(swipeGesture)
        }
        
        let imageRadius = view.animalImage.frame.size.width / 2.0
        view.animalImage.roundCorners(imageRadius, border: 0.7, color: .lightGray)
    }
    
    
    /// ---> Function for load content on webview <--- ///
    func loadContent(_ view: DetailsViewController) {
        view.activityIndicator.startAnimating()
        
        if let all = DataContainer.shared.allAnimals {
            let selectedType = DataContainer.shared.selectedDetailType
            
            let animals = all.filter { $0.type == selectedType }
            if let animal = animals.first {
                view.animalImage.setUrl(animal.url)

                view.animalTitle.text = AnimalsTypes.getName(selectedType.rawValue)
                
                view.totalLikes.text = "\(animals.reduce(0, {$0 + $1.likes}))"
            }
            
            let url = testUrls[selectedType.rawValue]
            if let request = RequestBuilder.makeContentRequest(url) {
                view.aboutWebView.load(request)
            }
        } else {
            Router.dismiss(view)
        }
    }
}
