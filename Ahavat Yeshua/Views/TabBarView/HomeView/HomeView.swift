//
//  HomeView.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 9/20/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject private var userSettings = UserSettings.shared
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 28) {
                    HomeHeroBanner(userName: userSettings.name)
                        .padding(.top, 8)
                    HomeStatsView(studiesCompleted: 3, friendsCount: 12)
                    
                    // Feature Cards
                    HStack(spacing: 16) {
                        NavigationLink(destination: BibleReadingView()) {
                            SquareView(iconName: "book",
                                       label: "Bible Reading",
                                       foregroundColor: .green,
                                       aid: "bible_reading"
                            )
                            
                    //        .accessibilityIdentifier("bible_reading") //Accessibility Modifier
                        }
                        
                        NavigationLink(destination: ProfileMainView()) {
                            SquareView(iconName: "person.circle",
                                       label: "User Profile",
                                        aid: "profile"  //Accessibility Modifier
                                       )
                        }
                    }

                    HStack(spacing: 16) {
                        NavigationLink(destination: DonationView()) {
                            SquareView(iconName: "creditcard",
                                       label: "Donation",
                                       foregroundColor: .orange)
                        }

                        NavigationLink(destination: LiveStreamView()) {
                            SquareView(iconName: "play.circle",
                                       label: "Live Stream",
                                       foregroundColor: .red)
                        }
                    }
                    
                    HStack(spacing: 16) {
                        NavigationLink(destination: MultiSelectionView()) {
                            SquareView(iconName: "square.stack.3d.down.forward",
                                       label: "Multi-selection",
                                       foregroundColor: .black)
                        }

                        NavigationLink(destination: HolyPlacesMapView()) {
                            SquareView(iconName: "map",
                                       label: "Holy Places Map",
                                       foregroundColor: .black)
                        }
                    }

                    Text("More Options")
                        .font(.custom("AvenirNext-Bold", size: 20))
                        .padding(.top, 10)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            NavigationLink(destination: TodoView()) {
                                SquareView(iconName: "star",
                                           label: "Favorites",
                                           foregroundColor: .purple,
                                           overlayText: "Coming Soon")
                            }

                            NavigationLink(destination: TodoView()) {
                                SquareView(iconName: "clock.arrow.circlepath",
                                           label: "Recent",
                                           foregroundColor: .blue,
                                           overlayText: "Coming Soon")
                            }

                            NavigationLink(destination: TodoView()) {
                                SquareView(iconName: "bell",
                                           label: "Notifications",
                                           foregroundColor: .gray,
                                           overlayText: "Coming Soon")
                            }
                            
                            NavigationLink(destination: TodoView()) {
                                SquareView(iconName: "bell",
                                           label: "Notifications",
                                           foregroundColor: .gray,
                                           overlayText: "Coming Soon")
                            }
                        }
                        .padding()
                    }
                }
                .padding()
            }
            .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }
}

#Preview {
    HomeView()
}
