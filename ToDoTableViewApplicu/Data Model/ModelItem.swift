//
//  Model.swift
//  ToDoTableViewApplicu
//
//  Created by Roderick Presswood on 7/20/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import Foundation

//build class called item to store two properties one stringtitle:bool
//Encodable makes Item type be able to be saved into a plist file
class Item: Codable {
    
    var title: String = ""
    
    var done: Bool = false
    
    
    
    
//    init(title : String, done: Bool){
//        self.title = title
//        self.done = done
//    }
    
}
