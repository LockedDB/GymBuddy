//
//  ExerciseTableView.swift
//  GymBuddy
//
//  Created by Dani Benet on 16/10/23.
//

import SwiftUI

struct ExerciseTableView: View {
    @State private var sampleSets = Set.sample
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            Grid (horizontalSpacing: 48, verticalSpacing: 8) {
                
                GridRow {
                    Text("Reps").foregroundStyle(.secondary)
                    Text("Weight").foregroundStyle(.secondary)
                    Text("RIR").foregroundStyle(.secondary)
                    Text("Tempo").foregroundStyle(.secondary)
                    Text("Action").foregroundStyle(.secondary)
                }
                
                Divider()
                
                ForEach(sampleSets) { set in
                    GridRow {
                        Text("\(set.reps)")
                        Text("\(String(format: "%.1f", set.weight))")
                        Text("\(set.rir)")
                        Text("\(set.tempo)")
                        Button("Click me") {
                            print("Clicked!")
                        }
                    }
                }
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ExerciseTableView()
}
