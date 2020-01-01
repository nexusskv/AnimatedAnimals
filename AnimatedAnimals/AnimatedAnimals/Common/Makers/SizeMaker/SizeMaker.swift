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
    
    /// ---> Function for make view custom height <--- ///
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
    
    
    /// ---> Function for make table height <--- ///
    static func makeTableHeight(_ height: CGFloat, table: UITableView, likes: LikesView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                table.sectionFooterHeight = height

                var rect                = likes.frame
                rect.size.height        = height
                likes.frame             = rect
                likes.likesTable.frame  = rect
            })
        }
    }
}
