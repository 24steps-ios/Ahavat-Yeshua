//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/20/25.
//
import Foundation

/// A test user model for use in UI tests of the Ahavat Yeshua app.
///
/// `TestUser` represents a user with optional profile details,
/// designed to facilitate testing scenarios with various user data combinations. 
/// Use this struct to create mock users for UI and integration testing.
///
/// ## Usage Example
///
/// Creating a custom test user:
/// ```swift
/// let customUser = TestUser(userName: "Alice",
///  email: "alice@email.com", address: nil, phoneNumber: "555-1234", dob: .input("01/01/1980"))
/// ```
/// Using a static example user:
/// ```swift
/// let jonny = TestUser.userJonny
/// print(jonny.userName) // "Jonny"
/// ```
// designed to facilitate testing scenarios with various user data combinations. 
// Use this struct to create mock users for UI and integration testing.
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

