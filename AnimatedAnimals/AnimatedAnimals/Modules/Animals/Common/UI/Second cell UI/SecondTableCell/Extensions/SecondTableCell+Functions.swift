//
//  SecondTableCell+Functions.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension SecondTableCell {
    
    func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "LikesCell",
                                             for: index) as? LikesCell

        //cell?.setCellValues(object, index: index.row)
        
        return cell ?? LikesCell()
    }
    
    func presentDetails(_ index: IndexPath) {
        
    }
}
