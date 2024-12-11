//
//  City.swift
//  Clock
//
//  Created by Neil Shah on 2024-12-10.
//

import Foundation

struct City {
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
}

//Create instances of the structure
let ottawa = City(timeZoneOffset: "+0", city: "Ottawa", time: "6:35", amOrPm: "AM")
let vancouver = City(timeZoneOffset: "-3", city: "Vancouver", time: "3:35", amOrPm: "AM")
let hamburg = City(timeZoneOffset: "+6", city: "Hamburg", time: "12:35", amOrPm: "PM")
let sydney = City(timeZoneOffset: "+16", city: "Sydney", time: "10:35", amOrPm: "PM")
let dubai = City(timeZoneOffset: "+9", city: "Dubai", time: "3:35", amOrPm: "PM")
let mexicoCity = City(timeZoneOffset: "-1", city: "Mexico City", time: "5:35", amOrPm: "AM")
