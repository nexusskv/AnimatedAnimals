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
    
    func setupUI() {
        dataTable.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: bottomInset, right: 0.0)
        
        dataTable.tag = topTableTag
        
        dataTable.sectionHeaderHeight = SizeMaker.makeHeight(.header)
        dataTable.sectionFooterHeight = SizeMaker.makeHeight(.footer)

        likeDetailsView.alpha = 0.0
    }
    
    
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
