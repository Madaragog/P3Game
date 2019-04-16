//
//  File.swift
//  P3Game
//
//  Created by Cedric on 12/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation

var weapon = Sword(name: "toto", damage: 45)
class Sword: Weapon {
    override init(name: String, damage: Int) {
        super.init(name: "Sword", damage: 15)
    }
}
