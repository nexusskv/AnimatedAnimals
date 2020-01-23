//
//  AnimalsViewCell.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AnimalsViewCell: UICollectionViewCell {
    @IBOutlet weak var iconImage: AsyncImageView!
    @IBOutlet weak var animalTitle: UILabel!
    @IBOutlet weak var animalButton: UIButton!
    @IBOutlet weak var stampImage: UIImageView!
    var viewModel: AnimalsViewCellViewModel!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = AnimalsViewCellViewModel()
        
        setupUI()
    }
    
    
    /// ---> Function for apply fixed size to cell <--- ///
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        return layoutAttributes
    }
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        roundCorners(3.0, border: 0.4, color: .lightGray)
        
        layer.masksToBounds     = false
        layer.shadowOpacity     = 0.33
        layer.shadowRadius      = 3
        layer.shadowOffset      = CGSize(width: 0, height: 0)
        layer.shadowColor       = UIColor.black.cgColor
        layer.shouldRasterize   = true
    }
    
    
    /// ---> Action of animal item  <--- ///
    @IBAction func animalItemButtonTapped(_ sender: UIButton) {
        viewModel.handleItemButtonTap(self, button: sender)
    }
}
