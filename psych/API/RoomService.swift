//
//  RoomService.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/9.
//

import UIKit
import FirebaseFirestore
import FirebaseFirestoreSwift

struct RoomService{
    static let shared = RoomService()
    
    func createRoom(room: Room, completion: @escaping() -> Void){
        
        
        let values = ["rounds": 7,
                      "players": [Players](),
                      "joinCode": "sfssd"] as [String : Any]
        
        var ref: DocumentReference? = nil
        
        DB_TEST_GAMES.addDocument(data: values)
    }
    
    private func joinRoom(){
        
    }
}
