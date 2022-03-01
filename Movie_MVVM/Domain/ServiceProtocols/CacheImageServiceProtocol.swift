//
//  CacheImageServiceProtocol.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

protocol CacheImageServiceProtocol {
    func saveImageToCache(posterPath: String, image: UIImage)
    func getImageFromCache(posterPath: String) -> UIImage?
}
