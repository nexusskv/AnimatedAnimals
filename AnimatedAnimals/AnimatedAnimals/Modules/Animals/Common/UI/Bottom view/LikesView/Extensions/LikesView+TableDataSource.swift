//
//  LikesView+TableDataSource.swift
//  AnimatedAnimals
//
//  Created by Rost on 02.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension LikesView: UITableViewDataSource {
            
    /// ---> Function from table view data source protocol  <--- ///
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viewModel.makeCell(self, table: tableView, at: indexPath)

        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return likesArray.count
    }
}
