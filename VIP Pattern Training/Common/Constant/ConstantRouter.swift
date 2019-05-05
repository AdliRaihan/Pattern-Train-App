//
//  ConstantRouter.swift
//  VIP Pattern Training
//
//  Created by APCMB002 on 04/05/19.
//  Copyright © 2019 APCMB002. All rights reserved.
//

import UIKit

extension UIViewController
{
    var settingsController : UIStoryboardSegue
    {
        let destinationVC = SettingsViewController(nibName: "SettingsView", bundle: nil)
        return UIStoryboardSegue(identifier: "SettingsView", source: self, destination: destinationVC)
    }
}
