//
//  Chest.swift
//  P3Game
//
//  Created by Cedric on 06/05/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Chest : Fight {
//    the function to add the random weapon
    internal func chestRandomWeapon(_ player: Player) {
        let attacker = Fight().getAttacker(player)
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
