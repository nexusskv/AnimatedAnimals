//
//  AnimalsViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AnimalsViewModel {

    /// ---> Function for set values to UI <--- ///
    func makeDataSource(_ view: AnimalsViewController) {
        DataContainer.shared.makeAnimalsDataSource { result in
            DispatchQueue.main.async { [weak self] in
                guard let strongSelf = self else {
                    return
                }
                
                if let animals = result as? [[AnimalObject]] {
                    view.dataArray = animals
                    
                    strongSelf.refreshTables(view)
                } else if let error = result as? String {
                    AlertPresenter.showAlert(view, message: error)
                }
            }
        }
    }
    
    
    /// ---> Function for refresh tables  <--- ///
    func refreshTables(_ view: AnimalsViewController) {
        view.dataTable.reloadData()

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            if let likes = view.view.viewWithTag(likesViewTag) as? LikesView, let model = likes.viewModel {
                model.setValues(likes, objects: view.dataArray, at: view.selectedAnimal)
            }
        }
    }
}
