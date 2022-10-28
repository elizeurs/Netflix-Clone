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
  static let YoutubeAPI_KEY = "AIzaSyD4_X0B1rGmTabP5DaQPxGePGYrojKcFvI"
  static let YoutubeBaseURL = "https://youtube.googleapis.com/youtube/v3/search?"
}

enum APIError: Error {
  case failedToGetData
}

class APICaller {
  static let shared = APICaller()
  
//  func getTrendingMovies(completion: @escaping (String) -> Void) {
  func getTrendingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
    
    // create url itself
    guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else { return }
    
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
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
//        print(results.results[0].original_name) Optional("La Casa de Papel")
      } catch {
        completion(.failure(APIError.failedToGetData))
//        completion(.failure(error))
//        print(error.localizedDescription)
      }
    }
    // we have created the task and that task is, by default, created in the pause status
    task.resume()
  }
  
//  func getTrendingTvs(completion: @escaping (Result<[String], Error>) {
  func getTrendingTvs(completion: @escaping (Result<[Title], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
//        let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
      } catch {
        completion(.failure(APIError.failedToGetData))
//        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
//https://api.themoviedb.org/3/movie/upcoming?api_key=<<api_key>>&language=en-US&page=1
  func getUpcomingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)&language=en-US&page=1") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
      } catch {
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
//https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
  func getPopular(completion: @escaping (Result<[Title], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)&language=en-US&page=1") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
      } catch {
        completion(.failure(APIError.failedToGetData))
//        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
// https://api.themoviedb.org/3/movie/top_rated?api_key=<<api_key>>&language=en-US&page=1
  func getTopRated(completion: @escaping (Result<[Title], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)&language=en-US&page=1") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
      } catch {
        completion(.failure(APIError.failedToGetData))
//        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
  // GET /discover/movie
  // https://api.themoviedb.org/3/discover/movie?api_key=<<api_key>>&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate
  func getDiscoverMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/discover/movie?api_key=\(Constants.API_KEY)&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
      } catch {
        completion(.failure(APIError.failedToGetData))
//        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
  // https://api.themoviedb.org/3/search/movie?api_key={api_key}&query=Jack+Reacher
  func search(with query: String, completion: @escaping (Result<[Title], Error>) -> Void) {
    
    guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return }
    guard let url = URL(string: "\(Constants.baseURL)/3/search/movie?api_key=\(Constants.API_KEY)&query=\(query)") else { return }
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
        let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
        completion(.success(results.results))
//        print(results)
      } catch {
        completion(.failure(APIError.failedToGetData))
//        print(error.localizedDescription)
      }
    }
    task.resume()
  }
  
//  https://youtube.googleapis.com/youtube/v3/search?q=Harry&key=[YOUR_API_KEY]
  func getMovie(with query: String) {
    guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return }
    guard let url = URL(string: "\(Constants.YoutubeBaseURL)q=\(query)&key=\(Constants.YoutubeAPI_KEY)") else {return}
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      
      do {
        // let's view the response that we're going to get back from the youtube api.
        let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
        print(results)
      } catch {
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
}
