//
//  CommunityGuidelinesView.swift
//  AppleWizards
//
//  Created by Dipanshu Modi on 10/10/2023.
//

import SwiftUI

struct CommunityGuidelinesView: View {
    
    @State private var showAlert1 = false
    @State private var navigateToContentView = false
    
    private var AlertMessage: String = ("\n\n• Your location will be shared for the usage of the app - don’t worry, your personal information won’t be shared to others.\n\n• Please be courteous and respectful between others.\n\n• Be part of the community - we generalize expressing our own feelings.\n\n• Let’s get into the map!")
    
    private var AlertTitle: String = "Community Guidelines"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.creamWhite
                    .ignoresSafeArea()
                Text("")
                    .padding()
                    .onAppear {
                        // Triggered when view appears
                        showAlert1 = true
                    }
                    .alert(isPresented: $showAlert1) {
                        // The content of the alert
                        Alert(
                            title: Text(AlertTitle),
                            message: Text(AlertMessage),
                            primaryButton: .default(Text("I Agree")) {
                                // Set the flag to navigate to ContentView
                                navigateToContentView = true
                            },
                            secondaryButton: .cancel()
                        )
                    }
                    // Navigate to ContentView when flag is set
                    .background(
                        NavigationLink("", destination: ContentView(), isActive: $navigateToContentView)
                    )
            }
        }
    }
}
