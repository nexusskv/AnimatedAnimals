//
//  TopTableCell.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class TopTableCell: UITableViewCell {
    @IBOutlet weak var containerView: AnimalsContainerView!

    /// ---> Function for set values to UI  <--- ///
    func setValues(_ objects: [[AnimalObject]]) {
        if let model = containerView.viewModel {
            model.makeDataSource(containerView, objects: objects)
        }
    }
}
