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
    var lp: Int
    let maxLp: Int
    let weapon: Weapon
    let weapon1: Weapon
    let weapon2: Weapon
    var name: String
    var isAlive: Bool {
        return lp > 0
    }
    let characterSelection: String
//    didset pour lp
//    utilisation du getteur de isAlive
    init(type: String, lp: Int, maxLp: Int, weapon: Weapon, weapon1: Weapon, weapon2: Weapon, name: String, characterSelection: String) {
        self.type = type
        self.lp = lp
        self.maxLp = maxLp
        self.weapon = weapon
        self.weapon1 = weapon1
        self.weapon2 = weapon2
        self.name = name
        self.characterSelection = characterSelection
    }
    
    func attack(opponent: Characters) {
        opponent.lp -= weapon.damage
    }
    
    
}
