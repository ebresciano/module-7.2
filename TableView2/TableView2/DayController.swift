//
//  DayController.swift
//  TableView2
//
//  Created by Eva Marie Bresciano on 5/17/16.
//  Copyright © 2016 Module 7.2. All rights reserved.
//

import Foundation

class DayController {
    
    static let sharedInstance = DayController()
    
    var dayArray: [Day] = []
    
    // CRUD create read update delete 
    
    func addDay(day: Day) {
        dayArray.append(day)
        }
    
    func removeDay(day: Day) {
        if let index = dayArray.indexOf(day) {
        dayArray.removeAtIndex(index)
        
        }
     }
  }