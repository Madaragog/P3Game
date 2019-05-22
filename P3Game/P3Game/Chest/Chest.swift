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
        let randomNumber = [1, 2, 3][Int(arc4random_uniform(3))]
        
        if randomWeapon == 5 {
            switch attacker {
            case is Fighter:
                switch randomNumber {
                case 1:
                    attacker.weapon = Sword()
                case 2:
                    attacker.weapon = Spear()
                case 3:
                    attacker.weapon = Nunchaku()
                default:
                    fatalError("Unknown type of character")
                }
            case is Wizard:
                switch randomNumber {
                case 1:
                    attacker.weapon = MagicStick()
                case 2:
                    attacker.weapon = MagicWand()
                case 3:
                    attacker.weapon = MagicalGrimoire()
                default:
                    fatalError("Unknown type of character")
                }
            case is Colossus:
                switch randomNumber {
                case 1:
                    attacker.weapon = Mace()
                case 2:
                    attacker.weapon = Warhammer()
                case 3:
                    attacker.weapon = GreatSword()
                default:
                    fatalError("Unknown type of character")
                }
            case is Dwarf:
                switch randomNumber {
                case 1:
                    attacker.weapon = Axe()
                case 2:
                    attacker.weapon = DoubleEdgedAxe()
                case 3:
                    attacker.weapon = Dagger()
                default:
                    fatalError("Unknown type of character")
                }
            default:
                fatalError("Unknown type of character")
            }
        }
    }
}
