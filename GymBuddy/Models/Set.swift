//
//  Set.swift
//  GymBuddy
//
//  Created by Dani Benet on 15/10/23.
//

import Foundation

struct Set: Identifiable {
    
    var id: String
    var reps: Int
    var weight: CGFloat
    var tempo: String
    var rir: Int
    
    static var sample: [Set] {
        [
            Set(id: "1", reps: 8, weight: 55, tempo: "4-1-1-1", rir: 3),
            Set(id: "2", reps: 8, weight: 60, tempo: "4-1-1-1", rir: 3),
            Set(id: "3", reps: 8, weight: 65, tempo: "4-1-1-1", rir: 3)
        ]
    }
    
}
