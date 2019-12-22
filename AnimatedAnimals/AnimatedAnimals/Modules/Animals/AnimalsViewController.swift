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
    
    
    /// ---> View life cycle <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    deinit {
        
    }
}

