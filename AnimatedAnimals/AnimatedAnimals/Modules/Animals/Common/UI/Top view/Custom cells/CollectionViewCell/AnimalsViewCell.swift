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
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
    
    
    /// ---> Function for apply fixed size to cell <--- ///
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        return layoutAttributes
    }
}
