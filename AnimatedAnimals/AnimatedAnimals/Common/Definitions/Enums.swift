//
//  Enums.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


enum AnimalsTypes: Int {
    case none = -1
    case cat = 0
    case dog
    case parrot
    case fox
    
    static func getAllTypes() -> [AnimalsTypes] {
        return [.cat, .dog, .parrot, .fox]
    }
}
