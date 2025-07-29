//
//  Date.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/24/25.
//

import Foundation

/// An enumeration of supported date and time formats used throughout the app.
///
/// Use these cases to specify a desired format when converting dates to and from strings.
enum DateFormat: String {
    case slash = "MM/dd/yyyy"
    case long = "dd MMM yyyy"
    case iso = "yyyy-MM-dd"
    case full = "EEEE, MMM d, yyyy"
    case month = "MMMM"
    case day = "dd"
    case year = "yyyy"
    case fullMonthDayFullYear = "MMM dd, yyyy"
    
    case hour = "HH"
    case minute = "mm"
    case second = "ss"
    case hourMinute = "HH:mm"
    case hourMinuteSecond = "HH:mm:ss"
    case fullDateTime = "yyyy-MM-dd HH:mm:ss"
}

extension Date {
    /// Returns a cached DateFormatter configured with the given format.
    /// - Parameter format: The `DateFormat` to use.
    /// - Returns: A `DateFormatter` instance set to the specified format and locale.
    private static func formatter(_ format: DateFormat) -> DateFormatter {
        let formatter: DateFormatter = .init()
        formatter.dateFormat = format.rawValue
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }
    
    /// Parses a string into a `Date` using the specified format.
    /// - Parameters:
    ///   - input: The date string to parse.
    ///   - format: The `DateFormat` to use. Defaults to `.slash`.
    /// - Returns: The parsed `Date`, or `.distantPast` if parsing fails.
    static func input(_ input: String, with format: DateFormat = .slash) -> Date {
        Self
            .formatter(format)
            .date(from: input) ?? .distantPast
    }
    
    /// Formats the date as a string using the specified format.
    /// - Parameter format: The `DateFormat` to use.
    /// - Returns: The formatted date string.
    private func formattedToString(as format: DateFormat) -> String {
        Self
            .formatter(format)
            .string(from: self)
    }
}

extension Date {
    var slash: String { formattedToString(as: .slash) }
    var long: String  { formattedToString(as: .long) }
    var iso: String   { formattedToString(as: .iso) }
    var full: String  { formattedToString(as: .full) }
    var month: String { formattedToString(as: .month) }
    var day: String   { formattedToString(as: .day) }
    var year: String  { formattedToString(as: .year) }
    var fullMonthDayFullYear: String  { formattedToString(as: .fullMonthDayFullYear) }
}
