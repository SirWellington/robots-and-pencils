//
//  Serialization.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation


/**
    A Serializable object is one that can be converted to and from a standard data format.
    
    In this case, the standard data format used is an NSDictionary. NSDictionary is flexible,
    and it is also compatible with most JSON serialization methods already.
 */
protocol Serializable {
    
    /**
        Objects of this type must serializable into a standard data format
    */
    func serialize() -> NSDictionary
    
    /**
        Objects of this type must also be able to supply an ID,
        in other words, the thing that makes them unique.
     
        ASSUMPTION - I assume that the ID can be represented as a String
    */
    var id: String { get }
    
    
    /**
        Objects of this type must also be able to deserialized from the standard data format.
    */
    init?(dictionary: NSDictionary)
    
}
