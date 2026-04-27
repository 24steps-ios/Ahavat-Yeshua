//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/8/26.
//

struct DOB {
    var month: String
    var day: String
    var year: String
}

struct TestUser {         /// ?- optional
    var userName: String
    var email: String?
    var address: String?
    var phone: String?
    var dob: DOB?
}

extension TestUser {
    static var userJonny: TestUser {
        .init(
            userName: "Jonny",
            email: "jonny@gmail.com",
            address: "123 Main St",
            phone: "+1234567890",
            dob: .init(
                month: "August",
                day: "7",
                year: "1976"
            )
        )
    }
    
    static var userEva: TestUser {
        .init(
            userName: "Eva",
            email: "eva@gmail.com",
           // address: "456 Elm St",
            phone: "+0987654321",
            dob: .init(
                month: "May",
                day: "1",
                year: "2000"
            )
        )
    }
    
    static var userBoby: TestUser {
        .init(
            userName: "Boby",
            email: "boby@gmail.com",
            address: "789 Oak St",
            phone: "+1122334455"
        )
    }
    
    static var userAnonymous: TestUser {
        .init(
            userName: "Anonymous",
            email: "anonymous@gmail",
            address: "",
            phone: "+1122334455"
        )
    }
}


