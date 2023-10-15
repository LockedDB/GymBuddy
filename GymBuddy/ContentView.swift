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
    
    let cardHeight: CGFloat = 64
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Here's your training for the day.").font(.subheadline)
                
                
                Button(action: {
                    
                }) {
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
                    .frame(height: cardHeight)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.black)
                    )
                    .padding(.vertical, 8)
                }
                .foregroundStyle(.black)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
