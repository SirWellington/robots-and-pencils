//
//  RPAnnotation.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation

class RPAnnotation : Serializable {
    
    var name: String
    var note: String
    
    var id: String {
        return name
    }
    
    init(name: String, note: String) {
        self.name = name
        self.note = note
    }
    
    required init?(dictionary: NSDictionary) {
        
        guard let name = dictionary[Keys.NAME] as? String,
              let note = dictionary[Keys.NOTE] as? String
        else {
            return nil
        }
        
        self.name = name
        self.note = note
    }
    
    func serialize() -> NSDictionary {
        
        return [
            Keys.NOTE : note,
            Keys.NAME : name
        ]
    }
}

private class Keys {
    
    static let NAME = "name"
    static let NOTE = "note"
}
