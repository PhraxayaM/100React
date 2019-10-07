//
//  NetworkingService.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/6/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation

class NetworkingService {

func login(params: Dictionary<String, Any>, completion: @escaping ()->()) {
        
        
        // prepare json data
        
        let jsonData = try? JSONSerialization.data(withJSONObject: params)
        print(params)
        
        // create post request
        let url = URL(string: "https://100react.com/profile/api/loginAPI/")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")  // the request is JSON
        request.httpMethod = "POST"
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                print("Status: \(httpResponse.statusCode)")
            }
            
            // Validate response data is in expected format
            guard let mime = response?.mimeType, mime == "application/json" else {
                print("Wrong MIME type!")
                return
            }
            
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])as? [String: String]
            
//            print(responseJSON as Any)
            if let responseJSON = responseJSON {
                if responseJSON == nil {
                    return
                }
                print(responseJSON as Any)
                completion()
            }
        }
        task.resume()
    }

}
