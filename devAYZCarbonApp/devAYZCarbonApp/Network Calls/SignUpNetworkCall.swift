//
//  SignUpNetworkCall.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import Foundation

func getForecastWeather(CompletionHandler: @escaping (UserDetails) -> Void){
    let session = URLSession.shared

    let url = URL(string: "https://api.openweathermap.org/da")!
    let forecastTask = session.dataTask(with: url) { data, response, error in
        
        var details: UserDetails
        if error != nil || data == nil {
            print("Client error!")
            return
        }
        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
            print("Server error!")
            return
        }
        guard let mime = response.mimeType, mime == "application/json" else {
            print("Wrong MIME type!")
            return
        }
        // Using JSON Decoder
        let decoder = JSONDecoder()
        do {
            details = try decoder.decode(UserDetails.self, from: data!)
            CompletionHandler(details)
        } catch {
            print("JSON error: \(error.localizedDescription)")
        }
    }
    forecastTask.resume()
    
}
