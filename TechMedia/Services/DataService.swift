//
//  DataService.swift
//  TechMedia
//
//  Created by Ashit Anandkumar on 7/24/17.
//  Copyright © 2017 Ashit Anandkumar. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataServices {
    
    
    static let ds = DataServices()
    
    private var _REF_BASE = DB_BASE
    private var _REF_POST = DB_BASE.child("posts")
    private var _REF_USERS = DB_BASE.child("users")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_POSTS: DatabaseReference {
        return _REF_POST
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, String>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
}
