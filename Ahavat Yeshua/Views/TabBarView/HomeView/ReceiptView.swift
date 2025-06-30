import SwiftUI

struct ReceiptView: View {
    @ObservedObject private var userSettings = UserSettings.shared
    var amount: Double
    var onBack: () -> Void
    var onNext: () -> Void
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Donation Receipt")
                .font(.title)
                .fontWeight(.bold)
            VStack(alignment: .leading, spacing: 10) {
                Text("Sender: \(userSettings.name.isEmpty ? "-" : userSettings.name)")
                Text("Email: \(userSettings.email.isEmpty ? "-" : userSettings.email)")
                Text("Address: \(userSettings.address.isEmpty ? "-" : userSettings.address)")
                Text("Phone: \(userSettings.phone.isEmpty ? "-" : userSettings.phone)")
                Text("Birth Date: \(formattedBirthDate)")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(12)
            .shadow(radius: 2)

            Text("Total Donation: $\(amount, specifier: "%.2f")")
                .font(.headline)
                .padding()

            HStack(spacing: 24) {
                Button(action: onBack) {
                    Text("Back")
                        .padding()
                        .frame(maxWidth: 120)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Button(action: onNext) {
                    Text("Next")
                        .padding()
                        .frame(maxWidth: 120)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
    
    var formattedBirthDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: userSettings.birthDate)
    }
}
