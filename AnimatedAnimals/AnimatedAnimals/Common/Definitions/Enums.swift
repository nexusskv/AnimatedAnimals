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
    
    /// ---> Function for get all types  <--- ///
    static func getAllTypes() -> [AnimalsTypes] {
        return [.cat, .dog, .parrot, .fox, .squirrel, .lion, .tiger]
    }
    
    
    /// ---> Function for get animal name  <--- ///
    static func getAnimalName(_ type: Int) -> String {
        let allNames = ["Cat", "Dog", "Parrot", "Fox", "Squirrel", "Lion", "Tiger"]
        return allNames[type]
    }
    
    
    /// ---> Function for get all names  <--- ///
    static func getAllNames() -> [String] {
        return ["Cats", "Dogs", "Parrots", "Foxes", "Squirrels", "Lions", "Tigers"]
    }
    
    
    /// ---> Function for get name by type  <--- ///
    static func getName(_ type: Int) -> String {
        let all = getAllNames()

        return all[type]
    }
}


enum TransitionTypes: Int {
    case present
    case dismiss
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

enum SwipeTypes: Int {
    case up
    case down
    case right
    case left
}
