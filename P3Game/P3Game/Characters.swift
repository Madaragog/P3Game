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
    let weapon: Weapon
    var name: String
    var isAlive: Bool {
        return lp > 0
    }
    let caracterSelection: String
//    didset pour lp
//    utilisation du getteur de isAlive
    init(type: String, lp: Int, weapon: Weapon, name: String, caracterSelection: String) {
        self.type = type
        self.lp = lp
        self.weapon = weapon
        self.name = name
        self.caracterSelection = caracterSelection
    }
    
    func attack(opponent: Characters) {
        opponent.lp -= weapon.damage
    }
    
    
}
