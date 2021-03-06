//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Player {
    var team = [Character]()
    var playerName: String
    
    init(playerName: String) {
        self.playerName = playerName
    }
    
    func isTeamAlive() -> Bool {
        for char in team {
            if char.isAlive {
                return true
            }
        }
        return false
    }
}
