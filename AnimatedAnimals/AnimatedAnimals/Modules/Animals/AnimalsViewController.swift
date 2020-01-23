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
    var viewModel: AnimalsViewModel!
    var observerManager: ObserverManager!
    
    var dataArray: [[AnimalObject]] = []  // data array for first cell
    var selectedAnimal: Int = 0

    
    /// ---> View life cycle <--- ///
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        viewModel       = AnimalsViewModel()
        observerManager = ObserverManager()

        viewModel.makeDataSource(self)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        observerManager.addObservers(self)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        observerManager.removeObservers(self)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        DispatchQueue.main.async {
            self.dataTable.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: bottomInset, right: 0.0)
        }        
    }

        
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        dataTable.backgroundView  = UIView.makeWhiteView(.zero)
        dataTable.backgroundColor = .white
        
        dataTable.tag = topTableTag
        
        dataTable.sectionHeaderHeight = SizeMaker.makeHeight(.header)
        dataTable.sectionFooterHeight = SizeMaker.makeHeight(.footer)

        likeDetailsView.alpha = 0.0
    }
}

