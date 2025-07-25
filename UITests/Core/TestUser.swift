//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/17/25.
//

import Foundation

struct TestUser {
    var userName: String
    var email: String?
    var address: String?
    var phoneNumber: String?
    var dob: Date?
}

extension TestUser {
    static var userJonny: TestUser {
        .init(
            userName: "Jonny",
            email: "jonny@example.com",
            address: "123 Main St",
            phoneNumber: "+1234567890",
            dob: .input("08/31/1989")
        )
    }
    
    static var userEve: TestUser {
        .init(
            userName: "Eve",
            email: "eve@example.com",
            address: "456 Elm St",
            phoneNumber: "+0987654321",
            dob: .input("09/19/1953")
        )
    }
    
    static var userAnonymous: TestUser {
        .init(userName: "Anonymous")
    }
}
