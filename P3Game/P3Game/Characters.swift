//
//  Characters.swift
//  P3Game
//
//  Created by Cedric on 24/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Characters {
    let type: String
    let lp: Int
    let weapon: Weapon
    var name: String
    
    init(type: String, lp: Int, weapon: Weapon, name: String) {
        self.type = type
        self.lp = lp
        self.weapon = weapon
        self.name = name
    }
}
