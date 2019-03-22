//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Players {
    var playerName: String
    init(playerName: String) {
        self.playerName = playerName
    }
    func presentMenu() {
        print("Please choose your name"
            + "\n1. Player 1 press 1 to choose your name"
            + "\n2. Player 2 press 2 to choose your name")
        if let choice = readLine() {
            switch choice {
            case "1":
                player1Name()
            case "2":
                print("Votre banque contient euros !")
            default:
                print("Je ne comprends pas")
            }
        }
    }
    func player1Name() {
        print("Player 1 please choose your name")
        if let choice = readLine() {
            switch choice {
            case "1":
                player1Name()
            case "2":
                print("Votre banque contient euros !")
            default:
                print("Je ne comprends pas")
            }
        }
    }
}










//class Player1: Player {
//    override init(playerName: String) {


