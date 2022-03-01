//
//  ImageService.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

final class ImageService: ImageServiceProtocol {
    func getImage(posterPath: String, completion: @escaping (Swift.Result<UIImage, Error>) -> Void) {
        let imageAPIService = ImageAPIService()
        let cacheImageService = CacheImageService()
        let proxy = ImageProxy(imageAPIService: imageAPIService, cacheImageService: cacheImageService)
        proxy.loadImage(posterPath: posterPath) { result in
            switch result {
            case let .success(image):
                completion(.success(image))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
