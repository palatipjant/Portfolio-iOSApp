//
//  palatipjant-API.swift
//  Portfolio-iOSApp
//
//  Created by Palatip Jantawong on 1/2/2567 BE.
//

import Foundation

struct work: Decodable, Identifiable{
    let id: Int
    let title: String
    let description: String
    let tag: String
    let workURL: String
    let imageURL: String
}

struct worksResponse: Decodable {
    let request: [work]
}

struct Mockdata {
    static let sampleWork = work(id: 0,
                                      title: "Portfolio iOS App",
                                      description: "At first I have this portfolio in website version but now i want it to be iOS app version. Because this is the best practice for my swiftui skill. 🙏 This projects is still under development 🙏",
                                      tag: "Mobile",
                                      workURL: "https://github.com/palatipjant/Portfolio-iOSApp",
                                      imageURL: "https://palatipjant-api-66ab44ccf333.herokuapp.com/portfolio-app/works/images/portfolio-app.png")
    
    static let work_mock = [sampleWork, sampleWork, sampleWork, sampleWork]
}

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://palatipjant-api-66ab44ccf333.herokuapp.com/portfolio-app/"
    private let appetizerURL = baseURL + "works"
    
    private init() {}
    
    func getWorks(completed: @escaping(Result<[work], APError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(worksResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch{
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
}
