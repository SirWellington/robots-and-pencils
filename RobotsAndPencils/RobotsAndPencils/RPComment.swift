//
//  RPComment.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation

class RPComment : Serializable {
    
    var id: String
    var comment: String
    var author: String
    
    init(id: String, comment: String, author: String) {
        
        self.id = id
        self.comment = comment
        self.author = author
    }
    
    required init?(dictionary: NSDictionary) {
        
        guard let id = dictionary[Keys.ID] as? String,
              let comment = dictionary[Keys.COMMENT] as? String,
              let author = dictionary[Keys.AUTHOR] as? String
        else {
            return nil
        }
        
        self.id = id
        self.comment = comment
        self.author = author
    }
    
    func serialize() -> NSDictionary {
        return [
            Keys.ID : id,
            Keys.AUTHOR : author,
            Keys.COMMENT : comment
        ]
    }

}

private class Keys {
    
    static let ID = "id"
    static let COMMENT = "comment"
    static let AUTHOR = "author"
}
