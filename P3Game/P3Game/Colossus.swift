//
//  Colossus.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Colossus: Characters {
    init(name: String) {
        super.init(type: "Colossus", lp: 120, maxLp: 120, weapon: [Mace(), Warhammer(), GreatSword()][Int(arc4random_uniform(3))], name: name, specialSkill: -6)
    }
}
