//
//  Item.swift
//  giaSwiftJSONApp
//
//  Created by Giannini Charles on 9/16/18.
//  Copyright © 2018 fortheFuture. All rights reserved.
//

import UIKit

class Item: Codable {
    let title: String
    let startYear: Int
    let endYear: Int
    let location:String
    let description:String
    let updatedAt: String
    let createdAt: String
    
    
    init (title:String, startYear:Int, endYear:Int, location:String, description:String, updatedAt: String, createdAt:String) {
        self.title = title
        self.startYear = startYear
        self.endYear = endYear
        self.location = location
        self.description = description
        self.updatedAt = updatedAt
        self.createdAt = createdAt
    }
}



















