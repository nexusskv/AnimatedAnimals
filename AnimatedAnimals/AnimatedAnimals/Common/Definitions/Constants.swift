//
//  Constants.swift
//  AnimatedAnimals
//
//  Created by Rost on 22.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


/// ---> API and params for test images <--- ///
let testApi         = "https://images.pexels.com/photos"
let compressParam   = "auto=compress&cs=tinysrgb&dpr=1&w=500"


let topTableTag         = 500
let likesTableTag       = 1000
let topCollectionTag    = 2000

let reloadListName  = NSNotification.Name("reloadLikedList")
let showDetailsName = NSNotification.Name("showAnimalDetails")
