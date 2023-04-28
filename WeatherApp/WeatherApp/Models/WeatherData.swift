//
//  WeatherData.swift
//  WeatherApp
//
//  Created by DalHyun Nam on 2023/04/28.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
