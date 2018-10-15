//
//  Country.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/16/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import Foundation
import UIKit

class Country {
    let cities: [City]
    init(cities: [City]){
        self.cities = cities
    }
}

var vietnam = Country(cities: [
    City(name: "Hanoi"),
    City(name:"Da Nang"),
    City(name: "HCM")
    ])


