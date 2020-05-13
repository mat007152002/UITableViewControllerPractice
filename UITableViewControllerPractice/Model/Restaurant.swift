//
//  Restaurant.swift
//  UITableViewControllerPractice
//
//  Created by 旌榮 凌 on 2020/5/13.
//  Copyright © 2020 旌榮 凌. All rights reserved.
//

import Foundation

class Restaurant {
    var name : String
    var type : String
    var location : String
    var image : String
    
    init(name : String, type : String, location : String, image : String){
        self.name = name
        self.type = type
        self.location = location
        self.image = image
    }//初始化器
    
    convenience init(){
        self.init(name: "", type: "", location: "", image: "")
    }
}
