//
//  Double+truncate.swift
//  GymBuddy
//
//  Created by Dani Benet on 16/10/23.
//

import Foundation

extension Double {
    func roundToPlaces(_ places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    func cutOffDecimalsAfter(_ places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self*divisor).rounded(.towardZero) / divisor
    }
}
