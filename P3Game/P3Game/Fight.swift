//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fight {
    
    func charactersStats(player: Player) {
        for char in player.team {
            if char.isAlive {
                print("\(player.playerName) \(char.type) : \(char.name); Life : \(char.lp); Weapon : \(char.weapon.name); Weapon damage : \(char.weapon.damage)")
            }
        }
    }
    
    func attack(player: Player, opponent: Player) {
        charactersStats(player: player)
        print("\(player.playerName) please choose the character you will use")
        for index in player.team.indices {
            if player.team[index].isAlive {
                print("For the \(player.team[index].name) please press \(index + 1)")
            }
        }
        let attacker = getCharacter(player: player)
        attacker.weapon = [Axe(), DoubleEdgedAxe(), Dagger()][Int(arc4random_uniform(3))]
        if attacker is Wizard {
            for index in player.team.indices {
                if player.team[index].isAlive {
                    if player.team[index].lp != player.team[index].maxLp {
                        for _ in 1...5 {
                            print("Would you like to use your special skill ?"
                                + "\n press y for yes and n for no")
                            if let choice = readLine() {
                                switch choice {
                                case "y","Y":
                                    print("\(player.playerName) please choose the character to heal")
                                    print("For the \(player.team[index].name), please press \(index + 1)")
                                    let opponentChar = getCharacter(player: player)
                                    attacker.specialAttack(opponent: opponentChar)
                                case "n","N":
                                    print("\(player.playerName) please choose the character to heal")
                                    print("For the \(player.team[index].name), please press \(index + 1)")
                                    let opponentChar = getCharacter(player: player)
                                    attacker.attack(opponent: opponentChar)
                                default:
                                    print("I don't understand, \(player.playerName) please restart")
                                    attack(player: player, opponent: opponent)
                                }
                            }
                        }
                    } else {
                        print("\(player.playerName) please choose the character to heal")
                        print("For the \(player.team[index].name), please press \(index + 1)")
                        let opponentChar = getCharacter(player: player)
                        attacker.attack(opponent: opponentChar)
                    }
                } else {
                    print("Sorry but all your characters have max life so you can't heal them, please choose someone you can attack with !")
                    attack(player: player, opponent: opponent)
                }
            }
        } else {
            print("Please choose who you're gonna attack")
            for index in opponent.team.indices {
                if opponent.team[index].isAlive {
                    print("For the \(opponent.team[index].name), please press \(index + 1)")
                }
            }
            let opponentChar = getCharacter(player: opponent)
            attacker.attack(opponent: opponentChar)
        }
    }

    func getCharacter(player: Player) -> Characters {
        if let choice = readLine() {
            if let index = Int(choice), player.team.indices.contains(index - 1){
                if player.team[index - 1].isAlive {
                    return player.team[index - 1]
                }
            }
        }
        print("the command you entered is unavailable please retry")
        return getCharacter(player: player)
    }
}
