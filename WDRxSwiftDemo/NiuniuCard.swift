//
//  NiuniuCard.swift
//  WDRxSwiftDemo
//
//  Created by 吴迪玮 on 16/3/8.
//  Copyright © 2016年 DNT. All rights reserved.
//

import UIKit

//Niuniu是一种可耻的赌博游戏
struct NiuniuCard {
    enum Suit:Character {
        case Spades = "♠️",Hearts="❤️",Dismonds="♦️",Clubs="♣️"
    }
    enum Rank:Int {
        case Two = 2,Three,Four,Five,Six,Seven,Eight,Nine,Ten
        case Jack,Queen,King,Ace
    }
    
    struct Values {
        enum ValueType {
            case Val,Ten,Flower
        }
        let type:ValueType
        let second:Int
        let suit:Suit
        
        init(suit:Suit,rank:Rank){
            switch rank{
            case .Ten:
                self.type = .Ten
            case .Jack,.Queen,.King:
                self.type = .Flower
            default:
                self.type = .Val
            }
            switch rank{
            case .Ace:
                self.second = 1
            default:
                self.second = rank.rawValue
            }
            self.suit = suit
        }
        
        var cardValue:Int {
            switch type {
            case .Flower:
                return 10
            default:
                return second
            }
        }
    }
    
    let rank:Rank,suit:Suit
}
