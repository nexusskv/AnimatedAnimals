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
    var viewModel: LikeDetailsViewModel!
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = LikeDetailsViewModel()
        
        viewModel.setupUI(self)
    }
    
    
    /// ---> Function for handle tap gesture  <--- ///
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .up || sender.direction == .down {
            self.collapse()
        }
    }
}
