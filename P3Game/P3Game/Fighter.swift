//
//  Fighter.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation

class Fighter: Characters {
    init(name: String) {
        super.init(type: "Fighter", lp: 100, weapon: Sword(), name: name)
    }
}