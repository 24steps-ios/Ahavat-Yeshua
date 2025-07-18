//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/17/25.
//

struct DOB {
    var month: String
    var day: String
    var year: String
}

struct TestUser {
    var userName: String
    var email: String?
    var address: String?
    var phoneNumber: String?
    var dob: DOB?
}

extension TestUser {
    static var userJonny: TestUser {
        .init(
            userName: "Jonny",
            email: "jonny@example.com",
            address: "123 Main St",
            phoneNumber: "+1234567890",
            dob: .init(
                month: "May",
                day: "1",
                year: "1909"
            )
        )
    }
    
    static var userEve: TestUser {
        .init(
            userName: "Eve",
            email: "eve@example.com",
            address: "456 Elm St",
            phoneNumber: "+0987654321"
        )
    }
    
    static var userAnonymous: TestUser {
        .init(userName: "Anonymous")
    }
}
