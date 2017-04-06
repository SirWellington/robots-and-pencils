//
//  RemoteStore.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation


/**
    This class is reponsible for saving and retrieving Serializable objects.
 
    It uses the Strategy Pattern to allow it to swap out BackingStores as needed.
 */
class RemoteStore {
    
    private let store: BackingStore
    
    init(store: BackingStore) {
        self.store = store
    }
    
    func save<T: Serializable>(object: T) {
        
        let id = object.id
        let data = object.serialize()
        
        store.save(id: id, data: data)
    }
    
    func find<T: Serializable>(id: String) -> T? {
        
        guard let data = store.get(id: id) else { return nil }
        
        return T(dictionary: data)
    }
    
}
