//
//  profileMapper.swift
//  VIP Pattern Training
//
//  Created by Adli Raihan on 03/05/19.
//  Copyright © 2019 Adli Raihan. All rights reserved.
//

import Foundation
import ObjectMapper

class profileMapper : Mappable
{
    var information : profileInformation?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        information <- map["information"]
    }
}

class profileInformation : Mappable
{
    /**
     
     "full_name": "Adli Raihan",
     "username": "Thibobs",
     "email": "adli.raihan@wgs.co.id",
     "image": "https://www.google.com"
     
     **/
    var fullname    : String?
    var username    : String?
    var email       : String?
    var image       : String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        fullname       <- map["full_name"]
        username       <- map["username"]
        image          <- map["image"]
        email          <- map["email"]
    }
    
}
