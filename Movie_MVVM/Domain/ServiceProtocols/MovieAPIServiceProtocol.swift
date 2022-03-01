//
//  MovieAPIServiceProtocol.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

protocol MovieAPIServiceProtocol: AnyObject {
    func getMovieList(urlPath: String, completion: @escaping (Swift.Result<[Result], Error>) -> Void)
    func getMovieDetails(movieID: Int?, completion: @escaping (Swift.Result<Details, Error>) -> Void)
}
