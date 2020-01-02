//
//  DataContainer.swift
//  AnimatedAnimals
//
//  Created by Rost on 23.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


final class DataContainer {
    private init() { }
    
    static let shared = DataContainer()
    
    var allAnimals: [AnimalObject]?                 // All animals objects
    var selectedDetailType: AnimalsTypes = .none    // Selected type for details
    
    
    /// ---> Function for make animals objects <--- ///
    func makeAnimals() {
        let dataArrays = [testCats,
                          testDogs,
                          testParrots,
                          testFoxes,
                          testSquirrel,
                          testLions,
                          testTigers]
        
        var typeCount = 0
                
        var animalsArray = [AnimalObject]()
        for animals in dataArrays {
            var nameCount = 1
            
            for animal in animals {
                let animalParams = animal.components(separatedBy: "/")
                let likes   = Int(animalParams[0])
                let url     = testApi + "/" + animal + "?" + compressParam
                let name    = AnimalsTypes.getAnimalName(typeCount) + " \(nameCount)"
                
                if let type = AnimalsTypes(rawValue: typeCount) {
                    if let number = likes  {
                        let animalObject = AnimalObject(name: name,
                                                        url: url,
                                                        likes: number,
                                                        type: type)
                        
                        animalsArray.append(animalObject)
                    }
                }
                
                nameCount += 1
            }
            
            typeCount += 1
        }
        
        allAnimals = animalsArray
    }
    
    
    /// ---> Function for make data source on animals page <--- ///
    func makeAnimalsDataSource(_ completion: @escaping ((_ result: AnyObject) -> Void)) {
        DispatchQueue.global(qos: .userInitiated).async {
            DataContainer.shared.makeAnimals()
            
            DispatchQueue.global(qos: .userInitiated).async {
                var animalsArray = [[AnimalObject]]()
                
                if let all = DataContainer.shared.allAnimals {
                    let animalsTypes = AnimalsTypes.getAllTypes()
                    
                    for type in animalsTypes {
                        let animals = all.filter { $0.type == type }
                        
                        animalsArray.append(animals)
                    }
                    
                    completion(animalsArray as AnyObject)
                } else {
                    completion("Data source is empty." as AnyObject)
                }
            }
        }
    }
}
