import SwiftUI

import SwiftUI

struct HomeStatsView: View {
    @ObservedObject private var userSettings = UserSettings.shared
    let studiesCompleted: Int
    let friendsCount: Int
    var body: some View {
        HStack(spacing: 20) {
            StatCard(icon: "book.fill", label: "Studies", value: "\(studiesCompleted)", color: .blue)
            StatCard(icon: "person.2.fill", label: "Friends", value: "\(friendsCount)", color: .green)
            StatCard(icon: "creditcard", label: "Last Donation", value: userSettings.lastDonation > 0 ? String(format: "$%.2f", userSettings.lastDonation) : "Let's try!", color: .orange)
        }
        .padding(.vertical, 12)
        .frame(maxWidth: .infinity)
    }
}

struct StatCard: View {
    let icon: String
    let label: String
    let value: String
    let color: Color
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title)
                .foregroundColor(.white)
                .padding(12)
                .background(color)
                .clipShape(Circle())
            Text(value)
                .font(.headline)
                .foregroundColor(.primary)
            Text(label)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding(10)
        .background(Color(.systemBackground).opacity(0.9))
        .cornerRadius(16)
        .shadow(radius: 2)
    }
}
