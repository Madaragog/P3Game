//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fight {
    func attack() {
        
    }
    func fightIntroduction(player : Player) {
        print("\n ***********************************************************************"
                + "\n Now your team is ready, you're gonna have to fight !!!"
                + "\n \(player.playerName) you start")
        PlayerManager().charactersStats(player: player)
        print("\(player.playerName) please choose the character you will use"
            + "\n For the \(player.team[0].name) press 1; 2 for \(player.team[1].name) and 3 for the \(player.team[2].name)")
        if let choice = readLine() {
            switch choice {
            case "1":
                if player.team[0].type == "Wizard" {
                    healComrade(player: player)
                } else {
                    print("d")
                }
            case "2":
                if player.team[0].type == "Wizard" {
                    healComrade(player: player)
                } else {
                    print("d")
                }
            case "3":
                if player.team[0].type == "Wizard" {
                    healComrade(player: player)
                } else {
                    print("d")
                }
            default:
                print("You made a mistake please retry")
                fightIntroduction(player: player)
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
