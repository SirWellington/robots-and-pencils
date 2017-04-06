//
//  main.swift
//  RobotsAndPencils
//
//  Created by Wellington Moreno on 4/6/17.
//  Copyright © 2017 Wellington Moreno. All rights reserved.
//

import Foundation




let comment = RPComment()
let annotation = RPAnnotation()

let backingStore: BackingStore = ParseStore()
let remoteStore = RemoteStore(store: backingStore)

remoteStore.save(object: comment)
remoteStore.save(object: annotation)

let result: RPComment? = remoteStore.find(id: comment.id)

if result == nil {
    print("Could not find comment with id: \(comment.id)")
}
