//
//  Wizard.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Wizard: Character {
    init(name: String) {
        super.init(type: "Wizard", lp: 70, maxLp: 70, weapon: MagicStick(), name: name, specialSkill: -20)
    }
}
