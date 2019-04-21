//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fight {
    func case1Attack(player: Player, opponent: Player) {
        print("Please choose who you're gonna attack"
            + "\n Press 1 to attack \(opponent.team[0].name), 2 for \(opponent.team[1].name) and 3 for \(opponent.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                opponent.team[0].lp -= player.team[0].weapon.damage
            case "2":
                opponent.team[1].lp -= player.team[0].weapon.damage
            case "3":
                opponent.team[2].lp -= player.team[0].weapon.damage
            default:
                print("You made a mistake please retry")
                case1Attack(player: player, opponent: opponent)
            }
        }
    }
    func case2Attack(player: Player, opponent: Player) {
        print("Please choose who you're gonna attack"
            + "\n Press 1 to attack \(opponent.team[0].name), 2 for \(opponent.team[1].name) and 3 for \(opponent.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                opponent.team[0].lp -= player.team[1].weapon.damage
            case "2":
                opponent.team[1].lp -= player.team[1].weapon.damage
            case "3":
                opponent.team[2].lp -= player.team[1].weapon.damage
            default:
                print("You made a mistake please retry")
                case1Attack(player: player, opponent: opponent)
            }
        }
    }
    func case3Attack(player: Player, opponent: Player) {
        print("Please choose who you're gonna attack"
            + "\n Press 1 to attack \(opponent.team[0].name), 2 for \(opponent.team[1].name) and 3 for \(opponent.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                opponent.team[0].lp -= player.team[2].weapon.damage
            case "2":
                opponent.team[1].lp -= player.team[2].weapon.damage
            case "3":
                opponent.team[2].lp -= player.team[2].weapon.damage
            default:
                print("You made a mistake please retry")
                case1Attack(player: player, opponent: opponent)
            }
        }
    }
    func fightDevelopment(player : Player, opponent: Player) {
        PlayerManager().charactersStats(player: player)
        print("\(player.playerName) please choose the character you will use"
            + "\n For the \(player.team[0].name) press 1; 2 for \(player.team[1].name) and 3 for the \(player.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                if player.team[0].type == "Wizard" {
                    healComrade(player: player, opponent: opponent)
                } else {
                    case1Attack(player: player, opponent: opponent)
                }
            case "2":
                if player.team[1].type == "Wizard" {
                    healComrade(player: player, opponent: opponent)
                } else {
                    case2Attack(player: player, opponent: opponent)
                }
            case "3":
                if player.team[2].type == "Wizard" {
                    healComrade(player: player, opponent: opponent)
                } else {
                    case3Attack(player: player, opponent: opponent)
                }
            default:
                print("You made a mistake please retry")
                fightDevelopment(player: player, opponent: opponent)
            }
        }
    }
        func healComrade(player: Player, opponent: Player) {
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
                healComrade(player: player, opponent: opponent)
            }
        }
    }
}
