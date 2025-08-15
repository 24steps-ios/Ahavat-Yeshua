import SwiftUI

struct HomeHeroBanner: View {
    let userName: String
    var body: some View {
        ZStack(alignment: .leading) {
            LinearGradient(gradient: Gradient(colors: [Color.purple.opacity(0.7), Color.blue.opacity(0.7)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .cornerRadius(20)
                .shadow(radius: 8)
            VStack(alignment: .leading, spacing: 10) {
                HStack(alignment: .center, spacing: 16) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 56, height: 56)
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                    VStack(alignment: .leading) {
                        Text("Welcome back,")
                            .font(.headline)
                            .foregroundColor(.white.opacity(0.8))
                        Text(userName.isEmpty ? "Friend" : userName)
                            .font(.system(size: 28, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .accessibilityIdentifier(AccessibilityIdentifiers.greetingBannerId.rawValue)
                    }
                }
                Text("Wishing you a blessed day at Ahavat Yeshua!")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding(24)
        }
        .frame(maxWidth: .infinity, minHeight: 120)
        .padding(.horizontal)
    }
}
