//
//  Players.swift
//  P3Game
//
//  Created by Cedric on 22/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Players {
//    var player1Name: String
//    init(player1Name: String) {
//        self.player1Name = player1Name
//    }
//        func namePlayer1() {
//            player1Name = ""
//    }
//    var player2Name: String
//    init(player2Name: String) {
//        self.player2Name = player2Name
//    }
//        func namePlayer2() {
//            player2Name = ""
//    }
    
    
    
    
    
    
    func presentMenu() {
        print("Please choose your name"
            + "\n1. Player 1 press 1 to choose your name"
            + "\n2. Player 2 press 2 to choose your name")
        if let choice = readLine() {
            switch choice {
            case "1":
                player1Choice()
            case "2":
                player2Choice()
            default:
                print("I don't understand")
            }
        }
    }
    func player1Choice() {
        print("Player 1 please choose your name")
        if let choice = readLine() {
            switch choice {
            case "":
                print("namePlayer1()")
            default:
                print("I don't understand")
            }
        }
    }
    func player2Choice() {
        print("Player 1 please choose your name")
        if let choice = readLine() {
            switch choice {
            case "":
                print("namePlayer2()")
            default:
                print("I don't understand")
            }
        }
    }
}










//class Player1: Player {
//    override init(playerName: String) {


