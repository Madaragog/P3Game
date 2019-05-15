//
//  Chest.swift
//  P3Game
//
//  Created by Cedric on 06/05/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Chest {
//    the function to add the random weapon
     static func chestRandomWeapon(_ attacker: Character) {
        let randomWeapon = [1, 2, 3, 4, 5][Int(arc4random_uniform(5))]
        
        if randomWeapon == 5 {
            switch attacker {
            case is Fighter:
                attacker.weapon = [Sword(), Spear(), Nunchaku()][Int(arc4random_uniform(3))]
            case is Wizard:
                attacker.weapon = [MagicStick(), MagicWand(), MagicalGrimoire()][Int(arc4random_uniform(3))]
            case is Colossus:
                attacker.weapon = [Mace(), Warhammer(), GreatSword()][Int(arc4random_uniform(3))]
            case is Dwarf:
                attacker.weapon = [Axe(), DoubleEdgedAxe(), Dagger()][Int(arc4random_uniform(3))]
            default:
                fatalError("Unknown type of character")
            }
        }
    }
}
