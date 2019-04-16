//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Weapon {
    let name: String
    let damage: Int
    
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}

class Sword: Weapon {
    init() {
        super.init(name: "Sword", damage: 15)
    }
}
var myWeapon = Sword()
print(myWeapon.name)
