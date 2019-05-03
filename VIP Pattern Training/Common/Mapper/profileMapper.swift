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
    /** JSON
     "message": Success, "information": {
     "contact_saved" = 10;
     email = "adli.raihan@wgs.co.id";
     favorite = 1;
     "user_id" = 29103923123;
     username = adliraihan;
     wallet =     {
     amount = 250000000;
     currency = IDR;
     premium = 0;
     };
     **/
   
    var information : profileInformation?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        information <- map["information"]
    }
}

class profileInformation : Mappable
{
    
    var email       : String?
    var favorite    : Int?
    var userId      : Int?
    var username    : String?
    var contacts    : Int?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        email       <- map["email"]
        favorite    <- map["favorite"]
        userId      <- map["user_id"]
        username    <- map["username"]
        contacts    <- map["contact_saved"]
    }
    
    
}
