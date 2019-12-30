//
//  RequestBuilder.swift
//  AnimatedAnimals
//
//  Created by Rost on 30.12.2019.
//  Copyright © 2019 Rost Gress. All rights reserved.
//

import Foundation


class RequestBuilder {
    
    /// ---> Function for make custom request to web services <--- ///
    static func makeContentRequest(_ url: String) -> URLRequest? {        
        guard let resultUrl = URL(string: url) else {
            print("Error: can't create content URL")
            return nil
        }

        let urlRequest = URLRequest(url: resultUrl)
        
        return urlRequest
    }
}
