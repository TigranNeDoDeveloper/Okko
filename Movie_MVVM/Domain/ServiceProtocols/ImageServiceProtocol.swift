//
//  ImageServiceProtocol.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

protocol ImageServiceProtocol {
    func getImage(posterPath: String, completion: @escaping (Swift.Result<UIImage, Error>) -> Void)
}
