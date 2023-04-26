//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by DalHyun Nam on 2023/04/25.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=cbf769b70647baa3d95d446c55cad94a"
    
    func fetchWeather(cityname: String) {
        let urlString = "\(weatherURL)&q=\(cityname)"
        print(urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data: reponse: error: ))
            task.resume()
        }
    }
    func handle(data: Data?, reponse: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}


