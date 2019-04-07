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

    
    
    func chooseCharacters() {
        print("Characters selection"
            + "\n Each of you will have to choose and name 3 characters between :"
            + "\n The Fighter (life point: 100, weapon: Sword, weapon damage: 15)"
            + "\n The Wizard (life point: 70, weapon: Magic Stick, Healing capacity: 10)"
            + "\n The Colossus (life point: 120, weapon: Mace, weapon damage: 16)"
            + "\n The Dwarf (life point: 80, weapon: Axe, weapon damage: 15)"
            + "\n The Wizard can only choose a comrade to heal"
            + "\n ************************************************************"
            + "\n To choose press 1 for The Fighter, 2 for The Wizard"
            + "\n                 3 for The Colossus, 4 for The Dwarf"
            + "\n \(player1!.playerName) you start choosing")
            playerTeamCreation(player: player1!)
        print("\n \(player2!.playerName) it's your turn to choose")
            playerTeamCreation(player: player2!)
    }
    func playerTeamCreation(player: Player) {
        if let choice = readLine() {
            switch choice {
            case "1":
                print("\(player.playerName) Choose your Fighter's name")
                player.team.append(createFighterPlayer())
                print("\(player.playerName) when you're done with your 3 characters, press c to continue")
            case "2":
                print("\(player.playerName) Choose your Wizard's name")
                player.team.append(createWizardPlayer())
                print("\(player.playerName) when you're done with your 3 characters, press c to continue")
                
            case "3":
                print("\(player.playerName) Choose your Colossus's name")
                player.team.append(createColossusPlayer())
                print("\(player.playerName) when you're done with your 3 characters, press c to continue")
                
            case "4":
                print("\(player.playerName) Choose your Dwarf's name")
                player.team.append(createDwarfPlayer())
                print("\(player.playerName) when you're done with your 3 characters, press c to continue")
            default:
                print("I don't understand, \(player.playerName) please restart")
                playerTeamCreation(player: player)
            }
        }
        if player.team.count < 4  {
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
