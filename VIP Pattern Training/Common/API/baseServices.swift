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
}

extension profileServices : TargetType
{
    
    var baseURL: URL {return URL(string: "https://private-d000c1-segwaypractice.apiary-mock.com")!}
    
    var path: String {
        switch self {
        case .getProfile:
            return "/profile"
        }
    }
    
    var method: Moya.Method {
        switch  self {
        case .getProfile:
            return .post
        }
    }
    
    var sampleData: Data {
        switch self {
        case .getProfile(let userId):
            return "{\"id\": \(userId), \"first_name\": \"Harry\", \"last_name\": \"Potter\"}".utf8Encoded
        }
    }
    
    var task: Task {
        switch self {
        case .getProfile(let userId):
            return .requestParameters(parameters: ["user_id":userId], encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type":"application/json"]
    }
    
}




