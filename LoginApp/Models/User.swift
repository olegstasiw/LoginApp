//
//  User.swift
//  LoginApp
//
//  Created by mac on 30.05.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

struct User {
    let data: [String : String]
}

extension User {
    static func getlog() -> [User] {
        return [User(data: ["Admin" : "Pass"])]
    }
}
