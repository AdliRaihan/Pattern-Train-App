//
//  UserSettings.swift
//  VIP Pattern Training
//
//  Created by APCMB002 on 04/05/19.
//  Copyright © 2019 APCMB002. All rights reserved.
//

import UIKit
import WRUserSettings

class UserSettings : WRUserSettings
{
    // * Make Shared Var
    static let standard = UserSettings()
    
    // * Make settings
    dynamic var userLogged  : Bool      = false
    dynamic var userName    : String    = "Guest"
    dynamic var userEmail   : String    = ""
    dynamic var userIsGuest : Bool      = true
}
