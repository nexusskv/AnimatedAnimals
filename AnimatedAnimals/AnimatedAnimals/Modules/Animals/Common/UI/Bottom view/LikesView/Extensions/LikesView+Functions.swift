//
//  LikesView+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 27.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension LikesView {

    /// ---> Function for make custom table view cell   <--- ///
    func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "LikesCell",
                                             for: index) as? LikesCell
        let object = likesArray[index.row]
        cell?.setValues(object)
        
        return cell ?? LikesCell()
    }
    
    
    /// ---> Function for present details by tapped cell <--- ///
    func presentDetails(_ table: UITableView, at index: IndexPath) {
        let likeObject = likesArray[index.row]
        
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
