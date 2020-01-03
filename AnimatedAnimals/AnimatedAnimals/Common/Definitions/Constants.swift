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
let testApi                 = "https://images.pexels.com/photos"
let compressParam           = "auto=compress&cs=tinysrgb&dpr=1&w=500"


/// ---> UI tags <--- ///
let topTableTag             = 500
let likesViewTag            = 2000


/// ---> Names for notification center <--- ///
let reloadListName          = NSNotification.Name("reloadLikedList")
let showDetailsName         = NSNotification.Name("showAnimalDetails")
let showLikeDetailsName     = NSNotification.Name("showLikeDetails")


/// ---> Insets for table and scroll view <--- ///
let bottomInset: CGFloat    = UIScreen.main.bounds.height / 3.0
let offsetY: CGFloat        = bottomInset - 30.0
let sectionInset: CGFloat   = 10.0                              // Inset for section of collection view
