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
    var animalsLayout: UICollectionViewFlowLayout!
    var animalsArray: [[AnimalObject]] = []
    var viewModel: AnimalsContainerViewModel!
    var cellMargin: CGFloat!
    var indexOfCellBeforeDragging = 0
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = AnimalsContainerViewModel()
        
        setupUI()
    }
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        cellMargin      = 10.0
        
        viewModel.makeCollectionLayout(self)
    }
}
