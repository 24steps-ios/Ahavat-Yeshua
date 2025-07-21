//
//  SettingsView.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 7/20/25.
//

import UIKit

// UIKit SettingsViewController
class SettingsViewController: UIViewController {
    let homeStatsSwitch = UISwitch()
    let donationViewSwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        // Home Stats Toggle (row)
        let homeStatsLabel = UILabel()
        homeStatsLabel.text = "Show Home Stats"
        homeStatsLabel.font = UIFont.systemFont(ofSize: 18)
        homeStatsLabel.translatesAutoresizingMaskIntoConstraints = false
        homeStatsSwitch.isOn = UserDefaults.standard.bool(forKey: "showHomeStats")
        homeStatsSwitch.addTarget(
            self,
            action: #selector(homeStatsSwitchChanged),
            for: .valueChanged
        )
        homeStatsSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        let homeStatsRow = UIStackView(
            arrangedSubviews: [homeStatsLabel, homeStatsSwitch]
        )
        homeStatsRow.axis = .horizontal
        homeStatsRow.spacing = 16
        homeStatsRow.alignment = .center
        homeStatsRow.translatesAutoresizingMaskIntoConstraints = false

        // Donation View Toggle (row)
        let donationLabel = UILabel()
        donationLabel.text = "Show Donation View"
        donationLabel.font = UIFont.systemFont(ofSize: 18)
        donationLabel.translatesAutoresizingMaskIntoConstraints = false
        if UserDefaults.standard.object(forKey: "showDonationView") == nil {
            UserDefaults.standard.set(true, forKey: "showDonationView")
        }
        donationViewSwitch.isOn = UserDefaults.standard.bool(forKey: "showDonationView")
        donationViewSwitch.addTarget(
            self,
            action: #selector(donationSwitchChanged),
            for: .valueChanged
        )
        donationViewSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        let donationRow = UIStackView(
            arrangedSubviews: [donationLabel, donationViewSwitch]
        )
        donationRow.axis = .horizontal
        donationRow.spacing = 16
        donationRow.alignment = .center
        donationRow.translatesAutoresizingMaskIntoConstraints = false

        // Main vertical stack
        let stack = UIStackView(
            arrangedSubviews: [homeStatsRow, donationRow]
        )
        stack.axis = .vertical
        stack.spacing = 32
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func homeStatsSwitchChanged() {
        UserDefaults.standard.set(homeStatsSwitch.isOn, forKey: "showHomeStats")
        NotificationCenter.default.post(name: .settingsChanged, object: nil)
    }
    
    @objc func donationSwitchChanged() {
        UserDefaults.standard.set(donationViewSwitch.isOn, forKey: "showDonationView")
        NotificationCenter.default.post(name: .settingsChanged, object: nil)
    }
}

// Notification extension for settings changes
extension Notification.Name {
    static let settingsChanged = Notification.Name("settingsChanged")
}


// SwiftUI wrapper for SettingsViewController
import SwiftUI

struct SettingsViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let settingsVC = SettingsViewController()
        let nav = UINavigationController(rootViewController: settingsVC)
        return nav
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

#Preview {
    SettingsViewControllerRepresentable()
}
