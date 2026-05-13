//
//  Untitled.swift
//  Ahavat Yeshua
//
//  Created by Ilya Sheynblat on 5/1/26.
//
import Foundation

enum DateFormat: String {
    case slash = "MM/dd/yyyy"
    case long = "dd MMM yyyy"
    case iso = "yyyy-MM-dd"
    case full = "EEEE, MMM dd, yyyy"
    case month = "MMMM"
    case day = "dd"
    case year = "yyyy"
    case fullMonthDayFullYear = "MMM dd, yyyy"
}
extension Date {
    ///- Returns: This method needs in order to create DateFormatter
    /// - Parameters:
    /// - Format:  Type 'DateFormat' where can to set different options
    private static func formatter(_ format: DateFormat) -> DateFormatter {
        let formatter: DateFormatter = .init()
        formatter.dateFormat = format.rawValue
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }
    
    static func input(_ input: String, with format: DateFormat = .slash) -> Date {
        Self
            .formatter(format)
            .date(from: input) ?? .distantPast //Date() last date
    }
    // return don't use because one line
    private func formattedToString(as format: DateFormat) -> String {
        Self
            .formatter(format)
            .string(from: self)
    }
}

extension Date {
    var slash: String { formattedToString(as: .slash) } //computed properties
    var long: String { formattedToString(as: .long) }
    var iso: String { formattedToString(as: .iso) }
    var full: String { formattedToString(as: .full) }
    var month: String { formattedToString(as: .month) }
    var day: String { formattedToString(as: .day) }
    var year: String { formattedToString(as: .year) }
    var fullMonthDayFullYear: String { formattedToString(as: .fullMonthDayFullYear) }
}








