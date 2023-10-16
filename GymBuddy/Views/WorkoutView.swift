//
//  WorkoutView.swift
//  GymBuddy
//
//  Created by Dani Benet on 15/10/23.
//

import SwiftUI

struct WorkoutView: View {
    var title: String
    @State private var sampleSets = Set.sample
    
    var body: some View {
        ScrollView {
            HStack {
                VStack (alignment: .leading) {
                    VStack (alignment: .leading) {
                        HStack {
                            
                            // TODO: Place exercise image here
                            Image(systemName: "dumbbell.fill")
                                .imageScale(.large)
                                .padding(.trailing, 4)
                            
                            Text("Incline Bench Press")
                                .font(.title)
                        }
                        .padding(.horizontal)
                        
                        
                        ForEach(1..<4) { _ in
                            VStack (alignment: .leading) {
                                Text("Guided bar + armbands")
                                    .font(.subheadline)
                                    .padding(.horizontal)
                                ExerciseTableView()
                            }
                            .padding(.vertical, 8)
                        }
                        
                    }
                }
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    NavigationStack {
        WorkoutView(title: "Leg & Curl Workout 💪")
    }
}
