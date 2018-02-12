//
//  Distance.swift
//  DistanceConverter
//
//  Created by José Martín Ruiz Pérez on 2/12/18.
//  Copyright © 2018 José Martín Ruiz Pérez. All rights reserved.
//

import Foundation
struct Distance {
    static let kmPerMile = 1.60934
    
    var miles:Double
    var km:Double {
        get {
            return Distance.toKm(miles:miles)
        }
        set(newKm) {
            miles = Distance.toMiles(km:newKm)
        }
    }
    init(miles:Double) {
        self.miles = miles
    }
    init(km:Double) {
        self.miles = Distance.toMiles(km:km)
    }
    static func toKm(miles:Double)->Double {
        return miles * kmPerMile
    }
    static func toMiles(km:Double)->Double {
        return km / kmPerMile
    }
}
