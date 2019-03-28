//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Player : Characters {
    var fighter: Fighter
    var wizard: Wizard
    var colossus: Colossus
    var dwarf: Dwarf
    
    var playerName: String
    
    init(playerName: String) {
        self.playerName = playerName
        }
    }


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
            + "\n The Wizard can omly choose a comrade to heal"
            + "\n ************************************************************"
            + "\n \(player1!.playerName) please choose your Characters and name them"
            + "\n To choose press 1 for The Fighter, 2 for The Wizard"
            + "\n                 3 for The Colossus, 4 for The Dwarf")
        
        
        
        
        
        
        
            }
    func playerTeamCreation() {
        if let choice = readLine() {
            switch choice {
            case "1":
                print("Choose your Fighter's name")
                player1?.fighter = createFighterPlayer()
            case "2":
                print("Choose your Wizard's name")
                
            case "3":
                print("Choose your Colossus's name")
                
            case "4":
                print("Choose your Dwarf's name")
                
            default:
                print("I don't understand")
            }
        }
    }
    func createFighterPlayer() -> Fighter {
        if let choice = readLine(), !choice.isEmpty {
            return Fighter(type: "Fighter", lp: 100, weapon: "Sword", name: choice)
        } else {
            print("error try again")
            return createFighterPlayer()
        }
    }
    
}
