//
//  dashboardRouter.swift
//  VIP Pattern Training
//
//  Created by APCMB002 on 04/05/19.
//  Copyright (c) 2019 APCMB002. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol dashboardRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol dashboardDataPassing
{
  var dataStore: dashboardDataStore? { get }
}

class dashboardRouter: NSObject, dashboardRoutingLogic, dashboardDataPassing
{
  weak var viewController: dashboardViewController?
  var dataStore: dashboardDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: dashboardViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: dashboardDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
