//
//  Introduction.swift
//  P3Game
//
//  Created by Cedric on 18/03/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation

class Introduction {
    func start() {
        print("Hi and welcome to P3Game"
            +   "\n Game Rules :"
            +   "\n The 2 players have to choose their name."
            +   "\n You will have to choose and name 3 characters."
            +   "\n You have to play each your turn."
            +   "\n When you are ready, FIGHT !"
            +   "\n GOOD LUCK 😎, press c to continue")
        
            PlayerManager().presentMenu()
    }
}
