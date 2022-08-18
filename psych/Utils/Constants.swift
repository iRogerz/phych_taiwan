//
//  Constants.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/7.
//

import Foundation
import FirebaseFirestore

let DB = Firestore.firestore()
let DB_GAMES = DB.collection("games")
let DB_TEST_GAMES = DB.collection("test_games")

