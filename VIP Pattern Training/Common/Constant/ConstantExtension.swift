//
//  ConstantExtension.swift
//  VIP Pattern Training
//
//  Created by Adli Raihan on 03/05/19.
//  Copyright © 2019 Adli Raihan. All rights reserved.
//

import UIKit
import Material

extension TextField
{
    // Home View Controller TF
    func homeViewTextField (infoDetail detail:String,placeHolder placeholder : String)
    {
        
        self.detail = detail
        self.placeholder = placeholder
        
        self.dividerNormalColor = UIColor(hex: savedColor.lightGray().A300)
        self.dividerActiveColor = UIColor(hex: savedColor.lightGray().A800)
        
        self.placeholderNormalColor = UIColor(hex: savedColor.lightGray().A300)
        self.placeholderActiveColor = UIColor(hex: savedColor.lightGray().A800)
        
    }
}


// MARK: Helpers to Data
extension String {
    var urlEscaped : String
    {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded : Data
    {
        return data(using: .utf8)!
    }
}
