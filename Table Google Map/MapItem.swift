//
//  MapItem.swift
//  Table Google Map
//
//  Created by kan sing lam
//  Copyright © 2018年 kan sing lam. All rights reserved.
//

import Foundation

struct MapItem {
    var name : String
    var latitude : Double
    var longitude : Double
    
    init(_ name : String, _ latitude : Double , _ longitude : Double) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
    }
}
