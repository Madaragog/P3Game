//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation
//faire comme si 10 perso

class Player {
    //    faire une tableau team
    var team = [Characters]()
    
    var playerName: String
    
    init(playerName: String) {
        self.playerName = playerName
    }
}
