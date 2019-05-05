//
//  ConstantExtension.swift
//  VIP Pattern Training
//
//  Created by Adli Raihan on 03/05/19.
//  Copyright © 2019 Adli Raihan. All rights reserved.
//

import UIKit
import Material
import Moya


// TYPE ALIAS


extension TextField
{
    // Home View Controller TF
    func homeViewTextField (infoDetail detail:String,placeHolder placeholder : String)
    {
        
        self.detail = detail
        self.placeholder = placeholder
        
        self.dividerNormalColor = UIColor(hex: savedColor.lightGrayShared.purpleThin)
        self.dividerActiveColor = UIColor(hex: savedColor.lightGrayShared.purpleThin)
        
        self.placeholderNormalColor = UIColor(hex: savedColor.lightGrayShared.purpleThin)
        self.placeholderActiveColor = UIColor(hex: savedColor.lightGrayShared.purpleThin)
        
        self.placeholderAnimation = .hidden
        
        self.textColor = UIColor.white
    }

}

extension Button
{
    // Home view Controller Button
    func homeViewButton ()
    {
        self.cornerRadiusPreset = .cornerRadius5
        self.backgroundColor = UIColor(hex: savedColor.lightGrayShared.purpleThin)
        self.alpha = 0.5
    }
    
}



// MARK: Helper to Dissmiss keyboard [ UI Related ]
extension UIViewController
{
    func setupKeyboardDismiss ()
    {
        self.view.addGestureRecognizer(
            UITapGestureRecognizer.init(target: self, action: #selector(execKeyboardDismiss)))
    }
    @objc func execKeyboardDismiss ()
    {
        self.view.endEditing(true)
    }
    
}

// MARK: Helpers to Data [ API Related ] 
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

// MARK: Helpers to Response [ API Related ]
extension Response
{
    var dataJSON : [String:Any]
    {
        do
        {
            let dataResponse = try self.mapJSON()
            if let data = dataResponse as? [String:Any] , !data.isEmpty
            {
                return data
            }
        }
        catch
        {
            
        }
        
        return ["message":"Couldn't parsing the data"]
    }
}


extension AppDelegate
{
    var rootView : UIViewController
    {
        if UserSettings.standard.userLogged
        {
            return TicketViewController(nibName: "TicketView", bundle: nil)
        }
        else
        {
            return HomeViewController(nibName: "HomeView", bundle: nil)
        }
    }
}



// EVERY EXTENSION per VC

extension dashboardViewController
{
    var modifiedButton : Button
    {
        let button = Button()
        return button
    }
    
    func modifiedButtonFunc (this : Button!) -> Button
    {
        
        return this
    }
}

extension UIButton {
    
    // Setup Image Below Text
    func applyMenuButton(_ title: String, _ image: UIImage) {
        self.setTitle(title, for: .normal)
        self.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
        self.tintColor = .clear
        self.clipsToBounds = true
        
        self.centerVertically()
    }
    
    // Setup Position
    func centerVertically(padding: CGFloat = 6.0) {
        guard
            let imageViewSize = self.imageView?.frame.size,
            let titleLabelSize = self.titleLabel?.frame.size else {
                return
        }
        
        let totalHeight = imageViewSize.height + titleLabelSize.height + padding
        
        self.imageEdgeInsets = UIEdgeInsets(
            top: -(totalHeight - imageViewSize.height)/2.5,
            left: 0.0,
            bottom: 0.0,
            right: -titleLabelSize.width
        )
        
        self.titleEdgeInsets = UIEdgeInsets(
            top: 0.0,
            left: -imageViewSize.width,
            bottom: -(totalHeight - titleLabelSize.height)*1.5,
            right: 0.0
        )
        
        self.contentEdgeInsets = UIEdgeInsets(
            top: 0.0,
            left: 0.0,
            bottom: titleLabelSize.height,
            right: 0.0
        )
    }
}
