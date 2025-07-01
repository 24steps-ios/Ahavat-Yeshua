//
//  DevMenuView.swift
//  Ahavat Yeshua
//
//  Created by Ilia Pavlov on 4/18/25.
//

import SwiftUI

struct DevMenuView: View {
    enum UserSetting: String, CaseIterable {
        case name, email, address, phone, lastDonation, birthDate
        
        var displayName: String {
            switch self {
            case .name: return "Name"
            case .email: return "Email"
            case .address: return "Address"
            case .phone: return "Phone"
            case .lastDonation: return "Last Donation"
            case .birthDate: return "Birth Date"
            }
        }
        
        var currentValue: String {
            let us = UserSettings.shared
            switch self {
            case .name: return us.name
            case .email: return us.email
            case .address: return us.address
            case .phone: return us.phone
            case .lastDonation: return String(us.lastDonation)
            case .birthDate: return us.birthDate.formatted(date: .abbreviated, time: .omitted)
            }
        }
        
        func reset() {
            let us = UserSettings.shared
            switch self {
            case .name: us.name = ""
            case .email: us.email = ""
            case .address: us.address = ""
            case .phone: us.phone = ""
            case .lastDonation: us.lastDonation = 0
            case .birthDate: us.birthDate = Date()
            }
        }
    }
    
    @State private var selectedSetting: UserSetting = .name

    @Binding var isPresented: Bool
    @AppStorage("isMockEnabled") private var isMockEnabled = false
    @AppStorage("showBetaBanner") private var showBetaBanner = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Reset User Setting")) {
                    Picker("Select Setting", selection: $selectedSetting) {
                        ForEach(UserSetting.allCases, id: \.self) { setting in
                            Text(setting.displayName)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    Text("Current Value: \(selectedSetting.currentValue)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.vertical, 2)
                    Button(role: .destructive) {
                        selectedSetting.reset()
                    } label: {
                        Label("Reset \(selectedSetting.displayName)", systemImage: "arrow.counterclockwise")
                    }
                }
            }

            .navigationTitle("Developer Menu")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Close") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

#Preview {
    DevMenuView(isPresented: .constant(true))
}
