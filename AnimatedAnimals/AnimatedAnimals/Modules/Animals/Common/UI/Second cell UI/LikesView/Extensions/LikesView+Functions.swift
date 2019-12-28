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
    
    func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "LikesCell",
                                             for: index) as? LikesCell
        let object = likesArray[index.row]
        cell?.setValues(object)
        
        return cell ?? LikesCell()
    }
    
    func presentDetails(_ index: IndexPath) {
        
    }
}
