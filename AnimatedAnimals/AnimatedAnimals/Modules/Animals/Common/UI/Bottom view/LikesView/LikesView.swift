//
//  LikesView.swift
//  AnimatedAnimals
//
//  Created by Rost on 27.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class LikesView: UIView {
    var likesTable: UITableView!
    var likesArray: [AnimalObject] = []
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
    
    
    /// ---> Constructor  <--- ///
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }

    
    /// ---> Constructor  <--- ///
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupUI()
    }
}
