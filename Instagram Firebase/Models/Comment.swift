//
//  Comment.swift
//  Instagram Firebase
//
//  Created by Juan Navarro on 1/17/20.
//  Copyright © 2020 Juan Navarro. All rights reserved.
//

import Foundation

struct Comment {
    
    let user: User
    
    let text: String
    let uid: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
