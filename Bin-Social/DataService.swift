//
//  DataService.swift
//  Bin-Social
//
//  Created by Vinod Kumar on 1/21/17.
//  Copyright © 2017 self. All rights reserved.
//

import Foundation
import Firebase

//declare globel base url of database
let DB_BASE = FIRDatabase.database().reference()

//create a class for data service

class DataService {
    static let ds = DataService()
    
    private var _REF_BASE = DB_BASE                     //base reference
    private var _REF_POSTS = DB_BASE.child("posts")     //baseurl/posts
    private var _REF_USERS = DB_BASE.child("users")     //baseurl/users
    
    var REF_BASE: FIRDatabaseReference {
        return _REF_BASE
    }
    var REF_POSTS: FIRDatabaseReference {
        return _REF_POSTS
    }
    var REF_USERS: FIRDatabaseReference {
        return _REF_USERS
    }
    
    //function to create fire base database user
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, String>){
        REF_USERS.child(uid).updateChildValues(userData)
    }
}
