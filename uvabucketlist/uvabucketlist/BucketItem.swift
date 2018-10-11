//
//  BucketItem.swift
//  uvabucketlist
//
//  Created by user145429 on 9/29/18.
//  Copyright © 2018 user145429. All rights reserved.
//

import Foundation

class BucketItem {
    
    var name: String
    var description: String
    var latitude: Float
    var longitude: Float
    var date: Date
    var done: Bool

    
    init(name: String, description: String, latitude: Float, longitude: Float, date:Date) {
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.date = date
        self.done = false

    }
    
}
