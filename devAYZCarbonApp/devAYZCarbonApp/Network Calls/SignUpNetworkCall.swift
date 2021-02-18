//
//  SignUpNetworkCall.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import Foundation

func userPersonalDetails(CompletionHandler: @escaping (UserDetails) -> Void){
    
    let sigunForm = [
        "username": "dev@ayz"
    ]
    
    guard let url = URL(string: "https://5f7505151cf3c900161cdb66.mockapi.io/api/v1/signup") else {
        print("the url is not reachable")
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
    request.httpBody = try? JSONSerialization.data(withJSONObject: sigunForm, options: [])
    
    
    let session = URLSession.shared
    let details = session.dataTask(with: request) { data, response, error in
        
        var detailsResult: UserDetails
        guard let data = data, error == nil else {
            print("no data retrived")
            return
        }
        
        let decoder = JSONDecoder()
        
        do {
            detailsResult = try decoder.decode(UserDetails.self, from: data)
            CompletionHandler(detailsResult)
        } catch {
            print("JSON error: \(error.localizedDescription)")
        }

    }
    details.resume()
    
}
