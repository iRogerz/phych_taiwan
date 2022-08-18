//
//  QuesetionService.swift
//  psych
//
//  Created by 曾子庭 on 2022/8/8.
//

import Foundation
import FirebaseFirestore

struct QuestionSevice{
    static let shared = QuestionSevice()
    
    
    func fetchQuestion(){
        var ref: DocumentReference? = nil
        //        ref = DB_GAMES.addDocument(data: [
        //            "first": "Ada",
        //            "last": "Lovelace",
        //            "born": 1815
        //        ]) { err in
        //            if let err = err {
        //                print("Error adding document: \(err)")
        //            } else {
        //                print("Document added with ID: \(ref!.documentID)")
        //            }
        //        }
        DB_TEST_GAMES.document("qwer").setData(["happy": 123])
        //        DB_GAMES.getDocuments() { (querySnapshot, err) in
        //            if let err = err {
        //                print("Error getting documents: \(err)")
        //            } else if let querySnapshot = querySnapshot{
        //                for document in querySnapshot.documents {
        //                    print("\(document.documentID) => \(document.data())")
        //                }
        //            }
        //        }
    }
    
}
