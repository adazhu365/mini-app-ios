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
    var latitude: Int
    var longitude: Int
    var date: String
    
    init(name: String, description: String, latitude: Int, longitude: Int, date:String) {
        self.name = name
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        self.date = date
    }
    
}
