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
        print("\(player.playerName) please choose the character you will use")
        for char in player.team {
//            faire un for et index calcule dans print
            if char.isAlive == true {
                print("For the \(char.name) please press \(char.caracterSelection)")
            }
        }
        let attacker = getCharacter(player: player)
        if attacker is Wizard {
            print("\(player.playerName) please choose the character to heal")
            for char in player.team {
                if char.isAlive == true {
                    print("For the \(char.name), please press \(char.caracterSelection)")
                }
            }
            let opponentChar = getCharacter(player: player)
            attacker.attack(opponent: opponentChar)
        } else {
            print("Please choose who you're gonna attack")
            for charOp in opponent.team {
                if charOp.isAlive == true {
                    print("For the \(charOp.name), please press \(charOp.caracterSelection)")
                }
            }
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
