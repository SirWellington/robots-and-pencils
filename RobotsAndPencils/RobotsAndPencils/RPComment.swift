//
//  RPComment.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation

class RPComment: Serializable {
    
    var id: String {
        return "comment-id"
    }
    
    init() {
        
    }
    
    required init?(dictionary: NSDictionary) {
        //Pull out a field from a dictionary
    }
    
    func serialize() -> NSDictionary {
        return [:]
    }
    
}
