//
//  ContentView.swift
//  GymBuddy
//
//  Created by Dani Benet on 13/10/23.
//

import SwiftUI
import os

struct ContentView: View {
    static let logger = Logger(subsystem: GymBuddyApp.subsystem, category: "ContentView")
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Here's your training for the day.").font(.subheadline)
            
            
            HStack () {
                VStack(alignment: .leading) {
                    Text("Legs & Curl Workout 💪")
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                }
                
                Spacer()
            }
            .frame(height: 64)
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.black)
            )
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        .padding(.top)
        
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
