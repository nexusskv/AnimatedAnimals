//
//  Constants.swift
//  AnimatedAnimals
//
//  Created by Rost on 22.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


/// ---> API and params for test images <--- ///
let testApi         = "https://images.pexels.com/photos"
let compressParam   = "auto=compress&cs=tinysrgb&dpr=1&w=500"


let topTableTag         = 500

let reloadListName      = NSNotification.Name("reloadLikedList")
let showDetailsName     = NSNotification.Name("showAnimalDetails")
let showLikeDetailsName = NSNotification.Name("showLikeDetails")

let bottomInset         = UIScreen.main.bounds.height / 2.8
let offsetY             = bottomInset - 85.0

let sectionInset: CGFloat = 10.0            // Inset for section of collection view 
