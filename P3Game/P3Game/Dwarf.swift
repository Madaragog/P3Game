//
//  Dwarf.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation

class Dwarf: Characters {
    init(name: String) {
        super.init(type: "Dwarf", lp: 80, maxLp: 80, weapon: [Axe(), DoubleEdgedAxe(), Dagger()][Int(arc4random_uniform(3))], name: name, characterSelection: "4")
    }
}
