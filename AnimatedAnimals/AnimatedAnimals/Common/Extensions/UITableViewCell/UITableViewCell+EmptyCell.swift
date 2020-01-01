//
//  UITableViewCell+EmptyCell.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UITableViewCell {
    
    static func makeEmptyCell() -> UITableViewCell {
        let cell = UITableViewCell()
        
        let bg = UIView()
        cell.backgroundView = bg
        
        return cell
    }
}
