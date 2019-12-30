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
    
    func setupUI() {
        aboutWebView.navigationDelegate = self
        
        let swipeGesture = UISwipeGestureRecognizer(target: self,
                                                    action: #selector(swipeReceived))
        swipeGesture.direction = .up

        view.addGestureRecognizer(swipeGesture)
    }
    
    func loadContent() {
        activityIndicator.startAnimating()
        
        if let all = DataContainer.shared.allAnimals {
            let selectedType = DataContainer.shared.selectedDetailType
            
            let animals = all.filter { $0.type == selectedType }
            if let animal = animals.first {
                animalImage.setUrl(animal.url)
                
                animalTitle.text = animal.name
                
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
