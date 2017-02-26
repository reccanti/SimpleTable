//
//  BackgroundColor.swift
//  SimpleTable
//
//  Created by Benjamin Wilcox on 2/25/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import Foundation
import UIKit

class BackgroundColor {
    var name:String
    var value:UIColor
    
    /**
     * Initialize the background color with a
     * name and value
     */
    init(name:String, value:UIColor) {
        self.name = name
        self.value = value
    }
}
