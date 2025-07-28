//
//  Date.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 7/28/25.
//
import Foundation

enum DateFormat: String {
    case slash = "MM/dd/yyyy"
    case long = "dd MMM yyyy"
    case iso = "yyyy-MM-dd"
    case full = "EEEE, dd MMMM yyyy"
    case month = "MMMM"
    case day = "dd"
    case year = "yyyy"
    case fullMonthDayFullYear = "MMM dd, yyyy"
}

// Time based format
enum TimeFormat: String {
    case hour24 = "HH:mm"
    case hour24WithSeconds = "HH:mm:ss"
    case hour12 = "h:mm a"
    case hour12WithSeconds = "h:mm:ss a"
    case hourOnly24 = "HH"
    case minuteOnly = "mm"
    case secondOnly = "ss"
    case fullDateTimeWithSeconds = "yyyy-MM-dd'T'HH:mm:ss"

}

extension Date {
    /// - Returns:  This method needs in order to create DateFormatter
    /// - Parameters:
    /// - format: Type 'DateFormat' where can be set different options
    private static func formatter(_ format: DateFormat) -> DateFormatter {
        let formatter: DateFormatter = .init()
        formatter.dateFormat = format.rawValue
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }
    
    /// Converts a date string into a `Date` object using a specified date format.
    ///
    /// This method attempts to parse the given string using a `DateFormatter`
    /// based on the provided `DateFormat`. If the string cannot be parsed into a valid date,
    /// it returns `.distantPast` as a fallback. (return today date)
    ///
    /// - Parameters:
    ///   - input: The date string to parse.
    ///   - format: The `DateFormat` to use for parsing. Defaults to `.slash`.
    /// - Returns: A `Date` object parsed from the input string, or `.distantPast` if parsing fails.
    static func input(_ input: String, with format: DateFormat = .slash) -> Date {
        Self
            .formatter(format)
            .date(from: input) ?? .distantPast
    }
    
    
    static func input(as input: String, with format: DateFormat = .slash) -> Date {
        Self
            .formatter(format)
            .date(from: input) ?? .distantPast  // ?? Date() or ?? .distantPast  always return today
    }
    
    private func formattedToString(as format: DateFormat) -> String {
        Self
            .formatter(format)
            .string(from: self)
    }
}

extension Date {                                       //class Date
    var slash: String { formattedToString(as: .slash) }
    var long: String { formattedToString(as: .long) }
    var iso: String { formattedToString(as: .iso) }
    var full: String { formattedToString(as: .full) }
    var month: String { formattedToString(as: .month) }
    var day: String { formattedToString(as: .day) }
    var year: String { formattedToString(as: .year) }
    var fullMonthDayFullYear: String { formattedToString(as: .fullMonthDayFullYear) }
}


