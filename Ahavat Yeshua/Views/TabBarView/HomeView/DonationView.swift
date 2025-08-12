//
//  DonationView.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 9/20/23.
//

import SwiftUI

struct DonationView: View {
    @State private var quantity: Int = 0
    @State private var totalAmount: Double = 0
    @State private var showCongratulations: Bool = false
    @State private var showConfirmation: Bool = false
    @State private var showReceipt: Bool = false
    
    var body: some View {
        VStack {
            Text("Total Amount: $\(totalAmount, specifier: "%.2f")")
                .font(.headline)
            
            HStack {
                Button(action: {
                    self.totalAmount += 1.0
                }) {
                    Text("$1")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    self.totalAmount += 5.0
                }) {
                    Text("$5")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
            
            Stepper(value: $quantity, in: 0...10) {
                Text("Quantity: \(quantity)")
            }
            .padding()
            
            Text("Total: $\(totalAmount * Double(quantity), specifier: "%.2f")")
                .font(.headline)
            
            Button(action: {
                self.showReceipt = true
            }) {
                Text("Donate")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showReceipt) {
                ReceiptView(amount: totalAmount * Double(quantity), onBack: {
                    showReceipt = false
                }, onNext: {
                    showReceipt = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                        showConfirmation = true
                    }
                })
            }
            .alert("Are you sure you want to donate?", isPresented: $showConfirmation) {
                Button("Agree", role: .none) {
                    self.showCongratulations = true
                }
                .foregroundColor(.green)
                Button("Cancel", role: .cancel) {}
                .foregroundColor(.red)
            }

        }
        .padding()
        .sheet(isPresented: $showCongratulations, content: {
            CongratulationsView(isPresented: $showCongratulations, amount: totalAmount * Double(quantity))
        })
        
    }
}

struct CongratulationsView: View {
    @Binding var isPresented: Bool
    var amount: Double
    @State private var animatedAmount: Double = 0
    @State private var showThankYou: Bool = false
    @State private var fireworksVisible: Bool = false
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Congratulations!")
                .font(.title)
                .fontWeight(.bold)
            
            Text("You donated")
                .font(.headline)
            Text("$\(animatedAmount, specifier: "%.2f")")
                .font(.system(size: 48, weight: .bold, design: .rounded))
                .foregroundColor(.green)
                .onAppear {
                    withAnimation(.easeOut(duration: 1.5)) {
                        animatedAmount = amount
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                        showThankYou = true
                    }
                }
            if fireworksVisible {
                FireworksView()
            }
        }
        .padding()
        .onAppear {
            // Automatically show fireworks when the view appears
            withAnimation {
                fireworksVisible.toggle()
            }
        }
        .onDisappear {
            if amount > 0 {
                UserSettings.shared.lastDonation = amount
            }
        }
    }
}


import SwiftUI

struct FireworksView: View {
    @State private var particles: [Particle] = []

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(particles) { particle in
                    Circle()
                        .fill(particle.color)
                        .frame(width: 18, height: 18) // Make particles bigger
                        .position(particle.position)
                        .opacity(particle.opacity)
                        .scaleEffect(particle.scale)
                        .animation(.easeOut(duration: 5), value: particle)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .onAppear {
                launchConfetti(in: geometry.size)
            }
        }
    }

    func launchConfetti(in size: CGSize = UIScreen.main.bounds.size) {
        let center = CGPoint(x: size.width / 2, y: size.height / 2)
        particles = (0..<80).map { _ in // More particles
            Particle(
                id: UUID(),
                position: center,
                color: Color.random(),
                opacity: Double.random(in: 0.7...1),
                scale: CGFloat.random(in: 1.0...2.2) // Bigger scale
            )
        }

        // Simulate motion
        for i in particles.indices {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                withAnimation {
                    particles[i].position.x += CGFloat.random(in: -150...150)
                    particles[i].position.y += CGFloat.random(in: -300...0)
                    particles[i].opacity = 0
                }
            }
        }
    }
}

struct Particle: Identifiable, Equatable {
    let id: UUID
    var position: CGPoint
    let color: Color
    var opacity: Double
    let scale: CGFloat
}


extension Color {
    static func random() -> Color {
        let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .orange, .pink]
        return colors.randomElement() ?? .white
    }
}


#Preview {
    DonationView()
}
