//
//  UIMaker.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class UIMaker {
        
    /// ---> Function for make rect to animal view  <--- ///
    static func makeAnimalsCellViews(_ table: UITableView, array: [[AnimalObject]], at index: Int) -> UIView {
        if let type = SizesTypes(rawValue: index) {
            let bgRect = UIMaker.makeAnimalsRect(type)

            switch type {
                case .header:
                    let headerView = UIView.makeWhiteView(bgRect)
                    
                    let header = table.dequeueReusableCell(withIdentifier: "TopTableCell") as! TopTableCell
                    header.frame = bgRect
                    header.setValues(array)
                    
                    headerView.addSubview(header)
                    
                    return headerView
                
                case .footer:
                    let likesView = UIMaker.makeLikesView(bgRect)
                
                    return likesView
                
                default:
                    break
            }
        }
        
        return UIView()
    }
    
    
    /// ---> Function for make rect to animal view  <--- ///
    static func makeAnimalsRect(_ type: SizesTypes) -> CGRect {
        return CGRect(x: 0.0,
                      y: 0.0,
                      width: UIScreen.main.bounds.size.width,
                      height: SizeMaker.makeHeight(type))
    }
    
    
    /// ---> Function for make custom view  <--- ///
    static func makeLikesView(_ rect: CGRect) -> LikesView {
        let likesView               = LikesView()
        likesView.frame             = rect
        likesView.backgroundColor   = .white
        likesView.tag               = likesViewTag
        
        return likesView
    }
    
    
    /// ---> Function for make swipe up gesture recognizer  <--- ///
    static func makeSwipeGesture(_ object: AnyObject, type: SwipeTypes, selector: Selector) -> UISwipeGestureRecognizer {
        let swipeGesture = UISwipeGestureRecognizer(target: object,
                                                    action: selector)
        switch type {
            case .up:
                swipeGesture.direction = .up
            
            case .down:
                swipeGesture.direction = .down
            
            case .right:
                swipeGesture.direction = .right
            
            case .left:
                swipeGesture.direction = .left
        }
                
        return swipeGesture
    }
}
