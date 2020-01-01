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
    
    static func getAllNames() -> [String] {
        return ["Cats", "Dogs", "Parrots", "Foxes", "Squirrels", "Lions", "Tigers"]
    }
    
    static func getName(_ type: Int) -> String {
        let all = getAllNames()

        return all[type]
    }
}

enum TransitionType: Int {
    case push
    case pop
}

enum CellTypes: Int {
    case collectionCell
    case tableCell
}

enum SizesTypes: Int {
    case header = 0
    case footer
    case resizedFooter
}
