//
//  TestUser.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/17/25.
//

import Foundation

/// A struct representing a mock user for UI and unit testing.
///
/// `TestUser` is designed to provide sample user data for tests.
/// It allows you to create users with various levels of detail, 
/// from fully populated profiles to minimal anonymous users. 
///
/// Use the provided static properties to quickly access common test users, 
/// or create your own instances as needed for specific scenarios.
///
/// ## Usage Example
///
/// ```swift
/// // Using a predefined static user
/// let jonny = TestUser.userJonny
/// print(jonny.userName) // "Jonny"
///
/// // Creating a custom user
/// let customUser = TestUser(
///     userName: "Alice",
///     email: "alice@example.com",
///     address: "789 Oak St",
///     phoneNumber: "+1122334455",
///     dob: .input("01/01/1990")
/// )
/// print(customUser.userName) // "Alice"
/// ```
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
