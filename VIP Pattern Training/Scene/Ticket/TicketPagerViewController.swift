//
//  TicketPagerView.swift
//  VIP Pattern Training
//
//  Created by APCMB002 on 05/05/19.
//  Copyright © 2019 APCMB002. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TicketPagerViewController: ButtonBarPagerTabStripViewController //,  PagerTabStripDelegate , PagerTabStripDataSource
{
    
    
    
    @IBOutlet var ticketPagerSelfView: UIView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "TicketPagerView", bundle: nil)
        setupSwiper()
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    
    /// MARK : Setting Pager Strip View
    override func updateIndicator(for viewController: PagerTabStripViewController, fromIndex: Int, toIndex: Int) {

    }

    
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return [SettingsViewController(),dashboardViewController()]
    }


    
    func setupSwiper ()
    {
        self.delegate = self
        self.datasource = self

        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .gray
        settings.style.selectedBarHeight = 2
//        navigationController?.navigationBar.addSubview(buttonBarView)
//        buttonBarView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: buttonBarView.frame.height)
    }
    

}
