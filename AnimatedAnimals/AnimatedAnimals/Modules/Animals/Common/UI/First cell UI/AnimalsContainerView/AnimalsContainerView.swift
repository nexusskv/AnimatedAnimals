//
//  AnimalsContainerView.swift
//  AnimatedAnimals
//
//  Created by Rost on 24.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AnimalsContainerView: UIView {
    @IBOutlet weak var animalsView: UICollectionView!
    var animalsArray: [[AnimalObject]] = []
    var cellMargin: CGFloat!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
}
