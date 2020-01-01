//
//  LikesCell.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class LikesCell: UITableViewCell {
    var iconImage : AsyncImageView = {
        let icon            = AsyncImageView()
        icon.contentMode    = .scaleAspectFill
        icon.clipsToBounds  = true
        
        return icon
    }()
    
    var animalTitle : UILabel = {
        let label             = UILabel()
        label.textColor       = .black
        label.font            = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment   = .left
        
        return label
    }()
        
    var likesNumber : UILabel = {
        let label             = UILabel()
        label.textColor       = .lightGray
        label.font            = UIFont.systemFont(ofSize: 12)
        label.textAlignment   = .left
        
        return label
    }()

    /// ---> Custom cell constructor  <--- ///
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    
    /// ---> Constructor  <--- ///
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
