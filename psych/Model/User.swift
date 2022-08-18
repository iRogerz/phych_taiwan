//
//  User.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import Foundation

struct User: Codable{
    var name: String
}

struct UserStore{

    private let userDefault = UserDefaults.standard
    
    private var user: User
   
    private func saveData(){
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(user) {
            let defaults = userDefault
            defaults.set(encoded, forKey: "data")
        }
    }

    private mutating func loadData(){
        if let saveData = userDefault.object(forKey: "data") as? Data {
            let decoder = JSONDecoder()
            if let loadedData = try? decoder.decode(User.self, from: saveData) {
                user = loadedData
            }
        }
    }
}
