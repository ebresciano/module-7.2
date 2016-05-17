//
//  Day.swift
//  TableView2
//
//  Created by Eva Marie Bresciano on 5/17/16.
//  Copyright © 2016 Module 7.2. All rights reserved.
//

import Foundation

class Day: Equatable{
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

func == (lhs: Day, rhs: Day) -> Bool {
    return lhs.name == rhs.name 
    
}
