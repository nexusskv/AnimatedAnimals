//
//  LikesViewModel.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class LikesViewModel {
    
    /// ---> Function for set values to UI <--- ///
    func setValues(_ view: LikesView, objects: [[AnimalObject]], at index: Int) {
        view.likesArray = objects[index]
        
        let range = NSMakeRange(0, view.likesTable.numberOfSections)
        let sections = NSIndexSet(indexesIn: range)
        
        view.likesTable.reloadSections(sections as IndexSet, with: .fade)
        view.likesTable.scrollToRow(at: IndexPath(row: 0, section: 0),
                                    at: .top,
                                    animated: false)
    }
    
    
    /// ---> Function for make custom table view cell   <--- ///
    func makeCell(_ view: LikesView, table: UITableView, at index: IndexPath) -> UITableViewCell {
        if let cell = table.dequeueReusableCell(withIdentifier: "LikesCell",
                                                for: index) as? LikesCell {
            let object = view.likesArray[index.row]
            cell.viewModel.setValues(cell, object: object)
            
            return cell
        }
        
        return LikesCell()
    }
    
    
    /// ---> Function for present details by tapped cell <--- ///
    func presentDetails(_ view: LikesView, table: UITableView, at index: IndexPath) {
        let likeObject = view.likesArray[index.row]
        
        if let cell = table.cellForRow(at: index) as? LikesCell {
            table.deselectRow(at: index, animated: true)
            
            cell.scaledView(true, by: .tableCell)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                cell.scaledView(false, by: .tableCell)

                NotificationCenter.default.post(name: showLikeDetailsName,
                                                object: nil,
                                                userInfo: ["like": likeObject])
            }
        }
    } 
}
