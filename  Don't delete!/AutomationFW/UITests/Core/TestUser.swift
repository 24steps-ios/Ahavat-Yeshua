//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 4/8/26.
import Foundation

struct TestUser {         /// ?- optional
    var userName: String?
    var email: String?
    var address: String?
    var phone: String?
    var dob: Date? //DOB?
}

extension TestUser {
    static var userJonny: TestUser {
        .init(
            userName: "Jonny",
            email: "jonny@gmail.com",
            address: "123 Main St",
            phone: "+1234567890",
            dob: .input("11/11/ 1980")
        )
    }
    
    static var userEva: TestUser {
        .init(
            userName: "Eva",
            email: "eva@gmail.com",
            address: "456 Elm St",
            phone: "+0987654321",
            dob: .input("02/12/1990")
        )
    }
    
   static var userAnonymous: TestUser {
        .init(
            userName: "Anonymous",
            email: "anonymous@gmail",
            address: "",
            phone: "",
            dob: .input("09/11/2000")
            
        )
    }
    static var userBoby: TestUser {
        .init(
            userName: "Boby",
            email: "boby@gmail.com",
            address: "789 Oak St",
            phone: "+1122334455",
            dob: .input("01/11/1990")
        )
    }
}
