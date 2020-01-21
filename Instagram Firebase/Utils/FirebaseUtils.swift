//
//  FirebaseUtils.swift
//  Instagram Firebase
//
//  Created by Juan Navarro on 1/10/20.
//  Copyright © 2020 Juan Navarro. All rights reserved.
//

import Foundation
import Firebase

extension Database {
    static func FetchUserWithUID(uid: String, completion: @escaping (User) -> ()) {
        print("Fetching user with uid:", uid)
        
        Database.database().reference().child("users").child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
         
            guard let userDictionary = snapshot.value as? [String: Any] else { return }
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            completion(user)

        }) { (error) in
            print("failed to fatch user for post!")
        }
    }
}
