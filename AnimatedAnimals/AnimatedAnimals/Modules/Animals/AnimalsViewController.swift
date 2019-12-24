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
    var dataArray: [[AnimalObject]] = []  // data array for first cell

    
    /// ---> View life cycle <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()

        makeDataSource()
        
        setupUI()
    }
}

