//
//  Task.swift
//  RealmObjPersistence
//
//  Created by Nana Adwoa Odeibea Amoah on 7/12/21.
//

import Foundation
import RealmSwift

class Task: Object {
    dynamic var id: String = NSUUID().uuidString
    dynamic var title = ""
    dynamic var detail = ""
    
    override class func primaryKey() -> String? {
        return "id"
    }
    

    
}
