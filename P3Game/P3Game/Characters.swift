//
//  Characters.swift
//  P3Game
//
//  Created by Cedric on 24/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Characters {
    var type: String
    var lp: Int
    var weapon: String
    
    init(type: String, lp: Int, weapon: String) {
        self.type = type
        self.lp = lp
        self.weapon = weapon
    }
}


class Fighter: Characters {
    override init(type: String, lp: Int, weapon: String) {
        super.init(type: "Fighter", lp: 100, weapon: "Sword")
    }
    var weaponDamage = 15
}


class Wizard: Characters {
    override init(type: String, lp: Int, weapon: String) {
        super.init(type: "Wizard", lp: 70, weapon: "Magic Stick")
    }
    var weaponHeal = 10
}


class Colossus: Characters {
    override init(type: String, lp: Int, weapon: String) {
        super.init(type: "Dwarf", lp: 120, weapon: "Mace")
    }
    var weaponDamage = 16
}


class Dwarf: Characters {
    override init(type: String, lp: Int, weapon: String) {
        super.init(type: "Dwarf", lp: 80, weapon: "Axe")
    }
    var weaponDamage = 15
}
