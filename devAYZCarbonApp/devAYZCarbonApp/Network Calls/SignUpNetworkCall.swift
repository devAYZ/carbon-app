//
//  SignUpNetworkCall.swift
//  devAYZCarbonApp
//
//  Created by Ayokunle on 17/02/2021.

import Foundation

func userPersonalDetails(CompletionHandler: @escaping (UserDetails) -> Void){
    
    let signup = SignUpViewController()
    
    let sigunForm = [
        "email": signup.email.text
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
        
        guard let data = data, error == nil else {
            print("no data retrived")
            return
        }
        let detailsResult = try? JSONSerialization.jsonObject(with: data, options: [])
//        let userdetails = UserDetailsViewController()
//        
//        userdetails.id.text = detailsResult.id
//        
            debugPrint(detailsResult)
        
//        var details: UserDetails
//        if error != nil || data == nil {
//            print("Client error!")
//            return
//        }
//        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
//            print("Server error!")
//            return
//        }
//        guard let mime = response.mimeType, mime == "application/json" else {
//            print("Wrong MIME type!")
//            return
//        }
//        // Using JSON Decoder
//        let decoder = JSONDecoder()
//        do {
//            details = try decoder.decode(UserDetails.self, from: data!)
//            CompletionHandler(details)
//        } catch {
//            print("JSON error: \(error.localizedDescription)")
//        }
    }
    details.resume()
    
}
