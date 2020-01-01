//
//  SizeMaker.swift
//  AnimatedAnimals
//
//  Created by Rost on 31.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class SizeMaker {
    
    static func makeHeight(_ index: SizesTypes) -> CGFloat {
        let screenHeight = UIScreen.main.bounds.height
        
        var height: CGFloat = 0.0
        switch index {
            case .header:
                height = screenHeight / 2.6
            
            case .footer:
                height = screenHeight / 1.927
            
            case .resizedFooter:
                height = screenHeight - (screenHeight / 4.5)
        }
        
        return height
    }
}
