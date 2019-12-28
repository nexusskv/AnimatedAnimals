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
    case squirrel
    case lion
    case tiger
    
    static func getAllTypes() -> [AnimalsTypes] {
        return [.cat, .dog, .parrot, .fox, .squirrel, .lion, .tiger]
    }
}

enum TransitionType: Int {
    case push
    case pop
}
