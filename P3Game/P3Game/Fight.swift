//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fight {
    
    func attack(player: Player, opponent: Player) {
        PlayerManager().charactersStats(player: player)
        for char in player.team {
//            faire un for et index calcule dans print
        }
        print("\n"
            + "\(player.playerName) please choose the character you will use"
            + "\n For the \(player.team[0].name) press 1; 2 for \(player.team[1].name) and 3 for the \(player.team[2].name)")
        let attacker = getCharacter(player: player)
        if attacker is Wizard {
            print("\(player.playerName) please choose the character to heal"
                + "\n For the \(player.team[0].name) press 1; 2 for \(player.team[1].name) and 3 for the \(player.team[2].name)")
            let opponentChar = getCharacter(player: player)
            attacker.attack(opponent: opponentChar)
        } else {
            print("Please choose who you're gonna attack"
                + "\n Press 1 to attack \(opponent.team[0].name), 2 for \(opponent.team[1].name) and 3 for \(opponent.team[2].name)")
            let opponentChar = getCharacter(player: opponent)
            attacker.attack(opponent: opponentChar)
        }
    }
    
    func getCharacter(player: Player) -> Characters {
        if let choice = readLine() {
            if let index = Int(choice) {
                if index == 1 {
                    return player.team[index - 1]
                } else {
                    if index == 2 {
                        return player.team[index - 1]
                    } else {
                        if index == 3 {
                            return player.team[index - 1]
                        }
                    }
                }
            }
        }
        print("the command you entered is unavailable please retry")
        return getCharacter(player: player)
    }
}
