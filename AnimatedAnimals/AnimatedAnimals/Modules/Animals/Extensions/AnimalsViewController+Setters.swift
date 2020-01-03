//
//  AnimalsViewController+Setters.swift
//  AnimatedAnimals
//
//  Created by Rost on 01.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {        
        dataTable.backgroundView  = UIView.makeWhiteView(.zero)
        dataTable.backgroundColor = .white
        
        dataTable.tag = topTableTag
        
        dataTable.sectionHeaderHeight = SizeMaker.makeHeight(.header)
        dataTable.sectionFooterHeight = SizeMaker.makeHeight(.footer)

        likeDetailsView.alpha = 0.0
    }
    
    
    /// ---> Function for set values to UI <--- ///
    func setDataSource() {
        DataContainer.shared.makeAnimalsDataSource { result in
            DispatchQueue.main.async { [weak self] in
                guard let strongSelf = self else {
                    return
                }
                
                if let animals = result as? [[AnimalObject]] {
                    strongSelf.dataArray = animals
                    
                    strongSelf.refreshTables()
                } else if let error = result as? String {
                    AlertPresenter.showAlert(self!, message: error)
                }
            }
        }
    }
}
