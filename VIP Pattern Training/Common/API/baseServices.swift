//
//  baseServices.swift
//  VIP Pattern Training
//
//  Created by Adli Raihan on 03/05/19.
//  Copyright © 2019 Adli Raihan. All rights reserved.
//

import Foundation
import Moya


let provider = MoyaProvider<profileServices>()

func getProfile ()
{
    provider.request(.getProfile(userId: Home.Profile.Request().userIDProfile!)) { ( result ) in
        
        print("#Result \(result)")
    }
}


enum profileServices
{
    case getProfile(userId : String)
    case loginVIP ( username : String , password : String )
}

extension profileServices : TargetType
{
   
    var APIURL      : String {return "https://virtserver.swaggerhub.com/AdliRaihan_Developer/user_information"}
    var APIVersion  : String {return "/1.0.0"}
    var baseURL: URL {return URL(string: APIURL + APIVersion)!}
    
    
    var path: String {
        switch self {
        case .getProfile:
            return "/user/login"
        case .loginVIP:
            return "/user/login"
        }
    }
    
    var method: Moya.Method {
        switch  self {
        case .getProfile:
            return .post
        case .loginVIP:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .getProfile(let JSONString):
            return "\(JSONString)".utf8Encoded
        case .loginVIP:
            return "".utf8Encoded
        }
    }
    
    var task: Task {
        switch self {
        case .getProfile(let userId):
            return .requestParameters(parameters: ["user_id":userId], encoding: JSONEncoding.default)
        case .loginVIP(let username, let password):
            return .requestParameters(parameters: ["username":username,"password":password], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type":"application/json"]
    }
    
}




