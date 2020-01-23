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
    var viewModel: LikesViewModel!
    
    /// ---> Constructor  <--- ///
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        viewModel = LikesViewModel()
        
        setupUI()
    }

    
    /// ---> Constructor  <--- ///
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupUI()
    }
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        backgroundColor  = .white
        
        likesTable = UITableView()
        likesTable.delegate     = self
        likesTable.dataSource   = self
        
        likesTable.backgroundColor  = .white
        likesTable.separatorColor   = .clear
        likesTable.separatorStyle   = .none
        likesTable.tableFooterView  = UIView()

        addSubview(likesTable)
        
        likesTable.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)
        
        likesTable.register(LikesCell.self, forCellReuseIdentifier: "LikesCell")
    }
}
