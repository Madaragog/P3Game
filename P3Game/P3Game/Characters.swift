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
    let weapon: String
    var name: String
    
    init(type: String, lp: Int, weapon: String, name: String) {
        self.type = type
        self.lp = lp
        self.weapon = weapon
        self.name = name
    }
}


class Fighter: Characters {
    override init(type: String, lp: Int, weapon: String, name: String) {
        super.init(type: "Fighter", lp: 100, weapon: "Sword", name: "")
    }
    var weaponDamage = 15
}


class Wizard: Characters {
    override init(type: String, lp: Int, weapon: String, name: String) {
        super.init(type: "Wizard", lp: 70, weapon: "Magic Stick", name: "")
    }
    var weaponHeal = 10
}


class Colossus: Characters {
    override init(type: String, lp: Int, weapon: String, name: String) {
        super.init(type: "Dwarf", lp: 120, weapon: "Mace", name: "")
    }
    var weaponDamage = 16
}


class Dwarf: Characters {
    override init(type: String, lp: Int, weapon: String, name: String) {
        super.init(type: "Dwarf", lp: 80, weapon: "Axe", name: "")
    }
    var weaponDamage = 15
}
