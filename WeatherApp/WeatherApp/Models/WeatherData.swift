//
//  WeatherData.swift
//  WeatherApp
//
//  Created by DalHyun Nam on 2023/04/28.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}
