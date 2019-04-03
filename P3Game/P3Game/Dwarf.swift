//
//  Dwarf.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation

class Dwarf: Characters {
    init(name: String) {
        super.init(type: "Dwarf", lp: 80, weapon: Weapon(name: "Axe", damage: 15), name: name)
    }
}
