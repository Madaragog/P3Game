//
//  Colossus.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Colossus: Character {
    init(name: String) {
        super.init(type: "Colossus", lp: 120, maxLp: 120, weapon: Mace(), name: name, specialSkill: -6)
    }
}
