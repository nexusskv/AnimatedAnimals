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
    
    var allAnimals: [AnimalObject]?
    var selectedDetailType: AnimalsTypes = .none
    
    
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
            for animal in animals {
                let animalParams = animal.components(separatedBy: "/")
                let likes = Int(animalParams[0])
                let path = animalParams[1]
                let url = testApi + "/" + animal + "?" + compressParam
                var name = path.replacingOccurrences(of: "-", with: " ")
                name = name.replacingOccurrences(of: "pexels", with: "")
                name = name.replacingOccurrences(of: ".jpg", with: "")
                name = name.replacingOccurrences(of: ".jpeg", with: "")
                
                if let type = AnimalsTypes(rawValue: typeCount) {
                    if let number = likes  {
                        let animalObject = AnimalObject(name: name,
                                                        url: url,
                                                        likes: number,
                                                        type: type)
                        
                        animalsArray.append(animalObject)
                    }
                }
            }
            
            typeCount += 1
        }
        
        allAnimals = animalsArray
    }
}
