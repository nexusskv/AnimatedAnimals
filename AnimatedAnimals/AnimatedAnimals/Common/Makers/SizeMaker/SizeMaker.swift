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

        var height: CGFloat = 0.0
        switch index {
            case .header:
                height = UIScreen.main.bounds.height / 2.6
            
            case .footer, .resizedFooter:
                height = makeFooterHight(index)
        }
        
        return height
    }
    
    
    /// ---> Function for change table height <--- ///
    static func changeTableFooter(_ height: CGFloat, table: UITableView, likes: LikesView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            UIView.animate(withDuration: 0.2,
                           delay: 0,
                           options: .curveEaseOut,
                           animations: {
                table.beginUpdates()
                    table.sectionFooterHeight = height
                                
                    var rect                = likes.frame
                    rect.size.height        = height
                    likes.frame             = rect
                table.endUpdates()
            })
        }
    }
    
    
    /// ---> Function for make footer height for different devices <--- ///
    static func makeFooterHight(_ type: SizesTypes) -> CGFloat {
        var height: CGFloat = 0.0
        let screenHeight = UIScreen.main.bounds.height
        
        switch type {
            case .footer:
                height = screenHeight / 1.927

                if UIDevice().userInterfaceIdiom == .phone {
                    switch UIScreen.main.nativeBounds.height {
                        case 1334:
                             height += 45.0

                        default:
                            break
                    }
                }
            
            case .resizedFooter:
                height = screenHeight - (screenHeight / 5.5)
            
                if UIDevice().userInterfaceIdiom == .phone {
                    switch UIScreen.main.nativeBounds.height {
                        case 1334:
                             height += 40.0

                        default:
                            break
                    }
                }
            
            case .header:
                break
        }

        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
                case 1920, 2208:
                    height += 51.0

                default:
                    break
            }
        }
        
        return height
    }
}
