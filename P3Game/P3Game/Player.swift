//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Player {
    var team = [Characters]()
    var teamTotalDamage = 0
    var playerName: String
    
    init(playerName: String) {
        self.playerName = playerName
    }
    
    internal func isTeamAlive() -> Bool {
        for char in team {
            if char.isAlive {
                return true
            }
        }
        return false
    }
//    add every damages to know the total team damages
    internal func addTeamTotalDamage(playerChar: Characters) {
        teamTotalDamage += playerChar.weapon.damage
    }
}
