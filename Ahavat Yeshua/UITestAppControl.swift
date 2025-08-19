import Foundation

/// A utility class for controlling and manipulating application state during UI testing via launch arguments.
///
/// `UITestAppControl` provides a centralized way to reset or modify `UserSettings` properties at application launch
/// by parsing specific launch flags passed from UI tests. This enables deterministic test setup and easier automation.
///
/// Usage:
/// - In your UI test, add launch arguments such as `-ResetUserName` or `-ResetLastDonation` to `XCUIApplication().launchArguments`.
/// - On app launch, call `UITestAppControl.shared.applyLaunchFlags()` to apply the requested state changes.
///
/// Extend the `resetActions` dictionary to support more flags and actions as needed.
class UITestAppControl {
    static let shared = UITestAppControl()
    private let userSettings = UserSettings.shared

    /// Maps launch flags to reset actions on user settings
    private let resetActions: [String: (UserSettings) -> Void] = [
        "-ResetUserName":     { $0.name = "" },
        "-ResetLastDonation": { $0.lastDonation = 0 },
    ]

    func applyLaunchFlags() {
        let arguments: [String] = ProcessInfo.processInfo.arguments
        resetActions.forEach { flag, action in
            if arguments.contains(flag) {
                action(userSettings)
            }
        }
    }
}
