//
//  Date.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/24/25.
//

import Foundation

enum DateFormat: String {
    case slash = "MM/dd/yyyy"
    case long = "dd MMM yyyy"
    case iso = "yyyy-MM-dd"
    case full = "EEEE, MMM d, yyyy"
    case month = "MMMM"
    case day = "dd"
    case year = "yyyy"
    case fullMonthDayFullYear = "MMM dd, yyyy"
    
    // Time-based formats
    case hour = "HH"
    case minute = "mm"
    case second = "ss"
    case hourMinute = "HH:mm"
    case hourMinuteSecond = "HH:mm:ss"
    case fullDateTime = "yyyy-MM-dd HH:mm:ss"
}

extension Date {
    /// - Returns: This method needs in order to create DateFormatter
    /// - Parameters:
    ///    - format: Type `DateFormat` where can be set different options
    private static func formatter(_ format: DateFormat) -> DateFormatter {
        let formatter: DateFormatter = .init()
        formatter.dateFormat = format.rawValue
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }
    
    /// Converts a date string into a `Date` object using the specified format.
    ///
    /// This method attempts to parse a date string using a date formatter
    /// based on the given `DateFormat`. If parsing fails, it returns `.distantPast`.
    ///
    /// - Parameters:
    ///   - input: The date string to parse.
    ///   - format: The date format to use for parsing. Defaults to `.slash`.
    /// - Returns: A `Date` object parsed from the input string, or `.distantPast` if parsing fails.
    ///
    /// - Example:
    /// ```swift
    /// let date = DateParser.input("07/25/2025") // Using `.slash` format
    /// ```
    static func input(_ input: String, with format: DateFormat = .slash) -> Date {
        Self
            .formatter(format)
            .date(from: input) ?? .distantPast
    }
    
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
