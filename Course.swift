//
//  Course.swift
//  NetworkingRequest
//
//  Created by Ksyunia on 16/02/2018.
//  Copyright © 2018 Ksyunia Efimova. All rights reserved.
//

import Foundation

struct Course{
    let id: Int
    let name: String
    let link: String
    let imageURL: String
    
    init(json:[String:Any]){
        id = json["id"] as? Int ?? 0
        name = json["name"] as? String ?? ""
        link = json["link"] as? String ?? ""
        imageURL = json["imageURL"] as? String ?? ""
    }
}
