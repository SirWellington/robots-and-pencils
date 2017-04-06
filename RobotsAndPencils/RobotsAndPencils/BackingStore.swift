//
//  BackingStore.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation


/**
 The BackingStore uses the Strategy Pattern, allowing different implementations to be used,
 and swapped at runtime.
 */
protocol BackingStore {
    
    func save(id: String, data: NSDictionary)
    
    func get(id: String) -> NSDictionary?
    
}

//Example implementations

/**
    Saves data in Parse
 */
class ParseStore: BackingStore {
    
    func save(id: String, data: NSDictionary) {
        
    }
    
    func get(id: String) -> NSDictionary? {
        
        return [:]
    }
}

/**
    Saves data in a REST Service
 */
class RestServiceStore: BackingStore {
    
    func save(id: String, data: NSDictionary) {
        
    }
    
    func get(id: String) -> NSDictionary? {
        return [:]
    }
}

