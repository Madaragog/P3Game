//
//  PlayerManager.swift
//  P3Game
//
//  Created by Cedric on 03/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class PlayerManager {
    var player1: Player?
    var player2: Player?
    
    
    func presentMenu() {
        print("\n1. Player 1 choose your name")
        player1 = createPlayer()
        print("\n1. Player 2 choose your name")
        player2 = createPlayer()
        
        chooseCharacters()
    }
    func createPlayer() -> Player {
        if let choice = readLine(), !choice.isEmpty {
            return Player(playerName: choice)
        } else {
            print("error try again")
            return createPlayer()
        }
    }
    func charactersStats(player: Player) {
            print("\n \(player.playerName) \(player.team[0].type)'s : \(player.team[0].name)   |    \(player.team[1].type)'s : \(player.team[1].name)    |   \(player.team[2].type)'s : \(player.team[2].name)"
                + "\n Life : \(player.team[0].lp)         |   \(player.team[1].lp)              |   \(player.team[2].lp)"
                + "\n Weapon : \(player.team[0].weapon.name)       |   \(player.team[1].weapon.name)     |   \(player.team[2].weapon.name)"
                + "\n Weapon damage : \(player.team[0].weapon.damage)   |   \(player.team[1].weapon.damage)              |   \(player.team[2].weapon.damage)"
            )
    }
    func chooseCharacters() {
        print("Characters selection"
            + "\n Each of you will have to choose and name 3 characters between :"
            + "\n The Fighter (life point: 100, weapon: Sword, weapon damage: 15)"
            + "\n The Wizard (life point: 70, weapon: Magic Stick, Healing capacity: 10)"
            + "\n The Colossus (life point: 120, weapon: Mace, weapon damage: 16)"
            + "\n The Dwarf (life point: 80, weapon: Axe, weapon damage: 15)"
            + "\n The Wizard can only choose a comrade to heal"
            + "\n ************************************************************"
            + "\n")
        if let p1 = player1 {
            if let p2 = player2 {
                playerTeamCreation(player: p1)
                playerTeamCreation(player: p2)
                charactersStats(player: p1)
                charactersStats(player: p2)
            }
        }
    }
//    deballer optionnel plus class pour chaque armes
    func playerTeamCreation(player: Player) {
        print("\n \(player.playerName) it's your turn to choose"
            + "\n To choose press 1 for The Fighter, 2 for The Wizard"
            + "\n                 3 for The Colossus, 4 for The Dwarf")
        if let choice = readLine() {
            switch choice {
            case "1":
                print(" \(player.playerName) Choose your Fighter's name")
                player.team.append(createFighterPlayer())
            case "2":
                print(" \(player.playerName) Choose your Wizard's name")
                player.team.append(createWizardPlayer())
            case "3":
                print(" \(player.playerName) Choose your Colossus's name")
                player.team.append(createColossusPlayer())
            case "4":
                print(" \(player.playerName) Choose your Dwarf's name")
                player.team.append(createDwarfPlayer())
            default:
                print("I don't understand, \(player.playerName) please restart")
                playerTeamCreation(player: player)
            }
        }
        while player.team.count < 3  {
            playerTeamCreation(player: player)
        }
    }
    func createFighterPlayer() -> Fighter {
        if let choice = readLine(), !choice.isEmpty {
            return Fighter(name: choice)
        } else {
            print("error try again")
            return createFighterPlayer()
        }
    }
    func createWizardPlayer() -> Wizard {
        if let choice = readLine(), !choice.isEmpty {
            return Wizard(name: choice)
        } else {
            print("error try again")
            return createWizardPlayer()
        }
    }
    func createColossusPlayer() -> Colossus {
        if let choice = readLine(), !choice.isEmpty {
            return Colossus(name: choice)
        } else {
            print("error try again")
            return createColossusPlayer()
        }
    }
    func createDwarfPlayer() -> Dwarf {
        if let choice = readLine(), !choice.isEmpty {
            return Dwarf(name: choice)
        } else {
            print("error try again")
            return createDwarfPlayer()
        }
    }
    
}
