//
//  Fighter.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fighter: Character {
    init(name: String) {
        super.init(type: "Fighter", lp: 100, maxLp: 100, weapon: Sword(), name: name, specialSkill: 30)
    }
}
