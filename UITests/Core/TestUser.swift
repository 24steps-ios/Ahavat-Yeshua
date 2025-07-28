//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/20/25.
//
import Foundation

struct TestUser{
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
            email: "jonny@gmail.com",
            address: "123 Main St",
            phoneNumber: "123-456-7890",
            dob: .input("08/31/1990")
        )
    }
    static var userEve: TestUser {
        .init(
            userName: "Eve",
            email: "eve@gmail.com",
            address: "456 Elm St",
            phoneNumber: "098-765-4321",
            dob: .input("09/11/2001")
        )
    }
    static var userAnonymous: TestUser {
        .init(userName: "Anonymous")
    }
}

