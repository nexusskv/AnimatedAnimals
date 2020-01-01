//
//  LikeDetailsView+Handlers.swift
//  AnimatedAnimals
//
//  Created by Rost on 31.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension LikeDetailsView {
        
    /// ---> Function for handle tap gesture  <--- ///
    @objc func handleTap() {
        var viewRect = frame
        viewRect.size = .zero
        frame = viewRect
        
        showView(false)
    }
}
