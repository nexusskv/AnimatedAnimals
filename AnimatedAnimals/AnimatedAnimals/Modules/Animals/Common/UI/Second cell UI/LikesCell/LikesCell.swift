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
    let icon = AsyncImageView()
    icon.contentMode = .scaleAspectFit
    icon.clipsToBounds = true
    return icon
    }()
    
    var animalTitle : UILabel = {
    let lbl = UILabel()
    lbl.textColor = .black
    lbl.font = UIFont.boldSystemFont(ofSize: 16)
    lbl.textAlignment = .left
    return lbl
    }()
        
    var likesNumber : UILabel = {
    let lbl = UILabel()
    lbl.textColor = .lightGray
    lbl.font = UIFont.systemFont(ofSize: 14)
    lbl.textAlignment = .left
    return lbl
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(iconImage)
        addSubview(animalTitle)
        addSubview(likesNumber)
        
        iconImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 70, height: 0, enableInsets: false)
        animalTitle.anchor(top: topAnchor, left: iconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
        likesNumber.anchor(top: animalTitle.bottomAnchor, left: iconImage.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
