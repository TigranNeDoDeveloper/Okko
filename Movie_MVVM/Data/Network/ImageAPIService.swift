//
//  ImageAPIService.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import Foundation

final class ImageAPIService: ImageAPIServiceProtocol {
    private let imageURL = "https://image.tmdb.org/t/p/w500"

    func getImage(posterPath: String, completion: @escaping (Swift.Result<Data, Error>) -> Void) {
        DispatchQueue.global().async {
            do {
                guard let url = URL(string: self.imageURL + posterPath) else { return }
                let imageData = try Data(contentsOf: url)
                completion(.success(imageData))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
