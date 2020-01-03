//
//  LikeDetailsView.swift
//  AnimatedAnimals
//
//  Created by Rost on 30.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class LikeDetailsView: UIView {
    @IBOutlet weak var animalImageView: AsyncImageView!
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var animalTitle: UILabel!
    @IBOutlet weak var likesImageView: UIImageView!
    @IBOutlet weak var animalLikes: UILabel!
    
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }
}
