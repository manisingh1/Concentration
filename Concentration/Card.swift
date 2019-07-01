//
//  Card.swift
//  Concentration
//
//  Created by Maninder Singh on 7/1/19.
//  Copyright © 2019 Maninder Singh. All rights reserved.
//

import Foundation

struct Card
{
    // no emoji here, only model data
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    init(identifier: Int) {
        self.identifier = identifier
    }
}
