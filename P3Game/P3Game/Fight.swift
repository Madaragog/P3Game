//
//  Fight.swift
//  P3Game
//
//  Created by Cedric on 07/04/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import Foundation


class Fight {
    var attackCount = 0
    var numberOfSpecial = 0
    
//    function to count the number of special attack
    private func numberOfSpecialCounter() {
        numberOfSpecial += 1
    }
    
    private func charactersStats(player: Player) {
        for char in player.team {
            if char.isAlive {
                print("\(player.playerName) \(char.type) : \(char.name); Life : \(char.lp); Weapon : \(char.weapon.name); Weapon damage : \(char.weapon.damage)")
            }
        }
    }
//    function when you use the wizard to heal a comrade
    private func wizHeal(player: Player) {
        print("\(player.playerName) please choose the character to heal")
        for index in player.team.indices {
            if player.team[index].isAlive {
                print("For the \(player.team[index].name) please press \(index + 1)")
            }
        }
    }
    
    private func chooseChar(opponent: Player) {
        print("Please choose who you're gonna attack")
        for index in opponent.team.indices {
            if opponent.team[index].isAlive {
                print("For the \(opponent.team[index].name), please press \(index + 1)")
            }
        }
    }
    
    private func askSpecialSkill() {
        print("Would you like to use your special skill ?"
            + "\n press y for yes and n for no")
    }
    
    private func getCharacter(player: Player) -> Characters {
        if let choice = readLine() {
            if let index = Int(choice), player.team.indices.contains(index - 1){
                if player.team[index - 1].isAlive {
                    return player.team[index - 1]
                }
            }
        }
        print("the command you entered is unavailable please retry")
        return getCharacter(player: player)
    }
//    function to get an attacker without using the chest (the chest add a new weapon randomly)
    func getNormalAttacker(_ player: Player) {
        print("\(player.playerName) please choose the character you will use")
        for index in player.team.indices {
            if player.team[index].isAlive {
                print("For the \(player.team[index].name) please press \(index + 1)")
            }
        }
    }
    
    internal func getAttacker(_ player: Player) -> Characters {
        let randomWeapon = [1, 2, 3, 4, 5][Int(arc4random_uniform(5))]
        
        if randomWeapon == 5 {
            Chest().chestRandomWeapon(player)
        } else {
            getNormalAttacker(player)
        }
        return getCharacter(player: player)
    }

    private func performSpecialAttack(player: Player, opponent: Player) {
        askSpecialSkill()
        if let choice = readLine(), choice.lowercased() == "y" {
            let attacker = getAttacker(player)
            switch attacker {
            case is Fighter:
                chooseChar(opponent: opponent)
                let opponentChar = getCharacter(player: opponent)
                attacker.specialAttack(opponent: opponentChar)
                player.addTeamTotalDamage(playerChar: attacker)
                numberOfSpecialCounter()
            case is Wizard:
                wizHeal(player: player)
                let opponentChar = getCharacter(player: player)
                attacker.specialAttack(opponent: opponentChar)
                player.addTeamTotalDamage(playerChar: attacker)
                numberOfSpecialCounter()
            case is Colossus:
                attacker.lp += attacker.specialSkill
                player.addTeamTotalDamage(playerChar: attacker)
                numberOfSpecialCounter()
            case is Dwarf:
                for index in opponent.team.indices {
                    opponent.team[index].lp -= attacker.specialSkill
                }
                player.addTeamTotalDamage(playerChar: attacker)
                numberOfSpecialCounter()
            default:
                fatalError("Unknown type of character")
            }
        } else {
            performAttack(player: player, opponent: opponent)
        }
    }
    
    private func performAttack(player: Player, opponent: Player) {
        let attacker = getAttacker(player)
        switch attacker {
        case is Fighter:
            chooseChar(opponent: opponent)
            let opponentChar = getCharacter(player: opponent)
            attacker.attack(opponent: opponentChar)
            player.addTeamTotalDamage(playerChar: attacker)
        case is Wizard:
            wizHeal(player: player)
            let opponentChar = getCharacter(player: player)
            attacker.attack(opponent: opponentChar)
            player.addTeamTotalDamage(playerChar: attacker)
        case is Colossus:
            chooseChar(opponent: opponent)
            let opponentChar = getCharacter(player: opponent)
            attacker.attack(opponent: opponentChar)
            player.addTeamTotalDamage(playerChar: attacker)
        case is Dwarf:
            chooseChar(opponent: opponent)
            let opponentChar = getCharacter(player: opponent)
            attacker.attack(opponent: opponentChar)
            player.addTeamTotalDamage(playerChar: attacker)
        default:
            fatalError("Unknown type of character")
        }
    }
    
    internal func attack(player: Player, opponent: Player) {
        attackCount += 1
        charactersStats(player: player)
        if attackCount % 5 == 0 {
            performSpecialAttack(player: player, opponent: opponent)
        } else {
            performAttack(player: player, opponent: opponent)
        }
   }
}
