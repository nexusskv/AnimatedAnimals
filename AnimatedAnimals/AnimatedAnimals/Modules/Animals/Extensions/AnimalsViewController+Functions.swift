//
//  AnimalsViewController+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AnimalsViewController {
          
    func refreshTables() {
        dataTable.reloadData()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            if let likes = strongSelf.view.viewWithTag(likesViewTag) as? LikesView {
                strongSelf.likesView = likes
                
                strongSelf.likesView.setValues(strongSelf.dataArray, at: strongSelf.selectedAnimal)
            }
        }
    }
}
