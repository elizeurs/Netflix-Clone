//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 23/10/22.
//

import Foundation

struct Constants {
  static let API_KEY = "e0330d7c6c649fe9f0325ddea7eeae4f"
  // https://api.themoviedb.org/3/trending/all/day?api_key=e0330d7c6c649fe9f0325ddea7eeae4f
  static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
  case failedToGetData
}

class APICaller {
  static let shared = APICaller()
  
//  func getTrendingMovies(completion: @escaping (String) -> Void) {
  func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
    
    // create url itself
    guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
    
    // making the api calls
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      // convert data into a json object, so we can serialize it, and be able to use it more easily
      do {
        // this function throws an error, so we must execute that function inside the do catch block
//        let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//        print(results)
        let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
//        print(results.results[0].original_name) Optional("La Casa de Papel")
      } catch {
        print(error.localizedDescription)
      }
    }
    // we have created the task and that task is, by default, created in the pause status
    task.resume()
  }
}