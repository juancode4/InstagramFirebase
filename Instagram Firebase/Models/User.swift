//
//  User.swift
//  Instagram Firebase
//
//  Created by Juan Navarro on 1/10/20.
//  Copyright © 2020 Juan Navarro. All rights reserved.
//

import Foundation

struct User {
    let uid: String
    let username: String
    let profileImageUrl: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
