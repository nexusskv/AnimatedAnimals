//
//  AnimalsViewController.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AnimalsViewController: UIViewController {
    @IBOutlet weak var dataTable: UITableView!
    @IBOutlet weak var likeDetailsView: LikeDetailsView!
    
    var dataArray: [[AnimalObject]] = []  // data array for first cell
    var selectedAnimal: Int = 0

    
    /// ---> View life cycle <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()

        addObservers()
        
        setDataSource()
        
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        DispatchQueue.main.async {
            self.dataTable.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: bottomInset, right: 0.0)
        }        
    }
    
    deinit {
        removeObservers()
    }
}

