//
//  CDHelper.swift
//  CoreDataStack
//
//  Created by G.D. Sanders on 10/6/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

import Foundation
import CoreData

class CDHelper  {
    
    lazy var modelURL: NSURL = {
        let bundle = NSBundle.mainBundle()
        
        if let url = bundle.URLForResource("Main", withExtension: "momd") {
            return url
        }
        print("CRITICAL - Managed Object Not Found!")
        abort()
    
    }()
    
    lazy var model: NSManagedObjectModel = {
        return NSManagedObjectModel(contentsOfURL: self.modelURL)!
    }()
    
}
