//
//  UserDefaultsPage.swift
//  DataPersistanceDemo
//
//  Created by Bennett Lee on 10/16/23.
//

import SwiftUI

let KeyIsDarkMode = "IsDarkMode"

struct UserDefaultsPage: View {
    @State var isDarkMode: Bool

    init() {
        isDarkMode = UserDefaults.standard.bool(forKey: KeyIsDarkMode)
    }

    var body: some View {
        Toggle("Dark Mode?", isOn: $isDarkMode)
            .preferredColorScheme(
                isDarkMode ? .dark : .light
            )
            .onChange(of: isDarkMode, perform: { value in

                // Save to disk via User Defaults
                UserDefaults.standard.setValue(value, forKey: KeyIsDarkMode)

                print("darkMode \(value)")
            })
        .padding()
    }
}

#Preview {
    UserDefaultsPage()
}
