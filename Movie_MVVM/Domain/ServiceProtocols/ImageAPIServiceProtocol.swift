//
//  ImageAPIServiceProtocol.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import Foundation

protocol ImageAPIServiceProtocol: AnyObject {
    func getImage(posterPath: String, completion: @escaping (Swift.Result<Data, Error>) -> Void)
}
