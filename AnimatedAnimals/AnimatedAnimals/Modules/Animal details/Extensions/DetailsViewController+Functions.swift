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
        let swipeGesture = UISwipeGestureRecognizer(target: self,
                                                    action: #selector(swipeReceived))
        swipeGesture.direction = .up

        view.addGestureRecognizer(swipeGesture)
    }
}
