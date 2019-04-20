//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fight {
    func fighterAttack(player: Player, opponent: Player) {
        print("Please choose who you're gonna attack with \(player.team[0].name)"
            + "\n Press 1 to attack \(opponent.team[0].name), 2 for \(opponent.team[1].name) and 3 for \(opponent.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                opponent.team[0].lp -= player.team[0].weapon.damage
                print("\(opponent.team[0].lp)")
            case "2":
                print("efe")
            case "3":
                print("efe")
            default:
                print("You made a mistake please retry")
                fighterAttack(player: player, opponent: opponent)
            }
        }
    }
    func fightIntroduction(player : Player, opponent: Player) {
        print("\n ***********************************************************************"
            + "\n Now your team is ready, you're gonna have to fight !!!"
            + "\n \(player.playerName) you start")
        PlayerManager().charactersStats(player: player)
        print("\(player.playerName) please choose the character you will use"
            + "\n For the \(player.team[0].name) press 1; 2 for \(player.team[1].name) and 3 for the \(player.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                if player.team[0].type == "Fighter" {
                    fighterAttack(player: player, opponent: opponent)
                } else {
                    if player.team[0].type == "Colossus" {
                        
                    } else {
                        if player.team[0].type == "Dwarf" {
                            
                        }
                    }
                }
            case "2":
                if player.team[1].type == "Fighter" {
                    
                } else {
                    if player.team[1].type == "Colossus" {
                        
                    } else {
                        if player.team[1].type == "Dwarf" {
                            
                        }
                    }
                }
            case "3":
                if player.team[2].type == "Fighter" {
                    
                } else {
                    if player.team[2].type == "Colossus" {
                        
                    } else {
                        if player.team[2].type == "Dwarf" {
                            
                        }
                    }
                }
            default:
                print("You made a mistake please retry")
                fightIntroduction(player: player, opponent: opponent)
            }
        }
    }
    func healComrade(player: Player) {
        print("Please heal someone in your team"
            + "\n To heal \(player.team[0].name) press 1; \(player.team[1].name) press 2; \(player.team[2].name) press 3")
        if let choice = readLine() {
            switch choice {
            case "1":
                player.team[0].lp += MagicStick().damage
            case "2":
                player.team[1].lp += MagicStick().damage
            case "3":
                player.team[2].lp += MagicStick().damage
            default:
                print("You made a mistake please retry")
                healComrade(player: player)
            }
        }
    }
}
