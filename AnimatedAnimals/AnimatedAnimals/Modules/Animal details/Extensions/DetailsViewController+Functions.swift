//
//  DetailsViewController+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 28.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension DetailsViewController {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        aboutWebView.navigationDelegate = self
        
        let swipeUp = UIMaker.makeSwipeUp(self, and: #selector(handleSwipe))
        view.addGestureRecognizer(swipeUp)
        
        let imageRadius = animalImage.frame.size.width / 2.0
        animalImage.roundCorners(imageRadius, border: 0.7, color: .lightGray)
    }
    
    
    /// ---> Function for load content on webview <--- ///
    func loadContent() {
        activityIndicator.startAnimating()
        
        if let all = DataContainer.shared.allAnimals {
            let selectedType = DataContainer.shared.selectedDetailType
            
            let animals = all.filter { $0.type == selectedType }
            if let animal = animals.first {
                animalImage.setUrl(animal.url)

                animalTitle.text = AnimalsTypes.getName(selectedType.rawValue)
                
                totalLikes.text = "\(animals.reduce(0, {$0 + $1.likes}))"
            }
            
            let url = testUrls[selectedType.rawValue]
            if let request = RequestBuilder.makeContentRequest(url) {
                aboutWebView.load(request)
            }
        } else {
            Router.dismiss(self)
        }
    }
}
