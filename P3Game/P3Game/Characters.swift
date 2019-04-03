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
//rajouter class pour weapon plus creer chaque fichier pour chaque class
class Weapon {
    let name: String
    let damage: Int
    
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}

class Fighter: Characters {
    init(name: String) {
        super.init(type: "Fighter", lp: 100, weapon: Weapon(name: "Sword", damage: 15), name: name)
    }
}


class Wizard: Characters {
    init(name: String) {
        super.init(type: "Wizard", lp: 70, weapon: Weapon(name: "Magic Stick", damage: 10), name: name)
    }
}


class Colossus: Characters {
    init(name: String) {
        super.init(type: "Colossus", lp: 120, weapon: Weapon(name: "Mace", damage: 16), name: name)
    }
}


class Dwarf: Characters {
    init(name: String) {
        super.init(type: "Dwarf", lp: 80, weapon: Weapon(name: "Axe", damage: 15), name: name)
    }
}
