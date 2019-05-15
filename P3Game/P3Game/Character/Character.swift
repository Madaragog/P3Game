//
//  Characters.swift
//  P3Game
//
//  Created by Cedric on 24/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Character {
    let type: String
    var lp: Int {
        didSet {
            if lp > maxLp {
                lp = maxLp
            } else if lp < 0{
                lp = 0
            }
        }
    }
    let maxLp: Int
    var weapon: Weapon
    var name: String
    var isAlive: Bool {
        return lp > 0
    }
    var specialSkill : Int
    var TotalDamageGiven = 0
    var TotalDamageReceived = 0
    
    init(type: String, lp: Int, maxLp: Int, weapon: Weapon, name: String, specialSkill: Int) {
        self.type = type
        self.lp = lp
        self.maxLp = maxLp
        self.weapon = weapon
        self.name = name
        self.specialSkill = specialSkill
    }
    
    func attack(opponent: Character) {
        opponent.lp -= weapon.damage
    }
    
    func specialAttack(opponent: Character) {
        opponent.lp -= specialSkill
    }
    
}
