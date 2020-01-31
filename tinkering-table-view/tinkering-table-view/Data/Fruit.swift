//
//  Fruit.swift
//  tinkering-table-view
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import Foundation

struct Fruit {
    var name: String
    var stock : Int
    var thumbnail: String
    
    init(name: String, stock : Int, thumbnail: String){
        self.name = name
        self.stock = stock
        self.thumbnail = thumbnail
    }
}
