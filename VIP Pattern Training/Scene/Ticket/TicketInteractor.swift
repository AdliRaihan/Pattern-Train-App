//
//  TicketInteractor.swift
//  VIP Pattern Training
//
//  Created by APCMB002 on 05/05/19.
//  Copyright (c) 2019 APCMB002. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol TicketBusinessLogic
{
  func doSomething(request: Ticket.Something.Request)
}

protocol TicketDataStore
{
  //var name: String { get set }
}

class TicketInteractor: TicketBusinessLogic, TicketDataStore
{
  var presenter: TicketPresentationLogic?
  var worker: TicketWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Ticket.Something.Request)
  {
    worker = TicketWorker()
    worker?.doSomeWork()
    
    let response = Ticket.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
