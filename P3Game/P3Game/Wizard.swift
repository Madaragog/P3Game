//
//  Wizard.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation

class Wizard: Characters {
    init(name: String) {
        super.init(type: "Wizard", lp: 70, weapon: MagicStick(), name: name)
    }
}
