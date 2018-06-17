//
//  DataService.swift
//  Break Point
//
//  Created by Hunter Sparrow on 6/15/18.
//  Copyright © 2018 Hunter Sparrow. All rights reserved.
//

import Foundation
import Firebase

//Out the class to be accessable
//PN: access the base url of the database
let DB_BASE = Database.database().reference()


class DataService {
    //PN: Singlton to make accessible to any other class throughtout ALC
    static let instance = DataService()
    
    let BASE_URL = "https://break-point-ce426.firebaseio.com/"

    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference {
        return _REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference {
        return _REF_FEED
    }
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
}
