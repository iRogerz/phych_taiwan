//
//  Room.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import Foundation

struct Room: Codable{
    var rounds:Int
    var players: [Players]
    let joinCode: String
    
    enum CodingKeys: String, CodingKey {
        case rounds = "rounds"
        case players = "players"
        case joinCode = "joinCode"
    }
    
}
