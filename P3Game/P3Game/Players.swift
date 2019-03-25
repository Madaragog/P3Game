//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Player {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
}


class PlayerManager {
    var player1: Player?
    var player2: Player?
    
    func presentMenu() {
        print("Please choose your name"
            + "\n1. Player 1 choose your name")
        player1 = createPlayer()
        print("Please choose your name"
            + "\n1. Player 2 choose your name")
        player2 = createPlayer()
        
        chooseCharacters()
    }
    func createPlayer() -> Player {
        if let choice = readLine(), !choice.isEmpty {
            return Player(name: choice)
        } else {
            print("error try again")
            return createPlayer()
        }
    }
    
    
    func chooseCharacters() {
        print("Characters selection"
            + "\n Each of you will have to choose and name 3 characters between :"
            + "\n The Combattant (life point: 100, weapon: Sword, weapon damage: 15)"
            + "\n The Mage (life point: 70, weapon: Magic Stick, weapon damage: 7, Healing capacity: 10)"
            + "\n The Colosse (life point: 120, weapon: Mace, weapon damage: 16)"
            + "\n The Nain (life point: 80, weapon: Axe, weapon damage: 15)"
            + "\n The Mage can choose to attack an enemy or to heal a comrade"
            + "\n Player 1 to choose your characters please press 1"
            + "\n Player 2 to choose your characters please press 2"
            + "\n Once you choosed and named your characters please press c to continue")
        if let choice = readLine() {
            switch choice {
            case "1":
                charactersPlayer1()
            case "2":
                charactersPlayer2()
            case "c":
                print("next step")
            default:
                print("I don't understand")
            }
        }
    }
    func charactersPlayer1() {
        print("Player 1 please choose your Characters and name them"
            + "\n Press 1 to chosse the Combattant"
            + "\n Press 2 to chosse the Mage"
            + "\n Press 3 to chosse the Colosse"
            + "\n Press 4 to chosse the Nain"
            + "\n Once you choosed and named your characters please press c to continue")
        if let choice = readLine() {
            switch choice {
            case "1":
                print("Characters().Combatant()")
            case "2":
                print("Characters().Mage()")
            case "3":
                print("Characters().Colosse()")
            case "4":
                print("Characters().Nain()")
            case "c":
                chooseCharacters()
            default:
                print("I don't understand")
            }
        }
    }
    func charactersPlayer2() {
        print("Player 2 please choose your Characters and name them"
            + "\n Press 1 to chosse the Combattant"
            + "\n Press 2 to chosse the Mage"
            + "\n Press 3 to chosse the Colosse"
            + "\n Press 4 to chosse the Nain"
            + "\n Once you choosed and named your characters please press c to continue")
        if let choice = readLine() {
            switch choice {
            case "1":
                print("Characters().Combatant()")
            case "2":
                print("Characters().Mage()")
            case "3":
                print("Characters().Colosse()")
            case "4":
                print("Characters().Nain()")
            case "c":
                chooseCharacters()
            default:
                print("I don't understand")
            }
        }
    }
}





