//
//  RPAnnotation.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation

class RPAnnotation : Serializable {
    
    var id: String {
        return "annotation-id"
    }
    
    init() {
        
    }
    
    required init?(dictionary: NSDictionary) {
        
    }
    
    func serialize() -> NSDictionary {
        return [:]
    }
}
