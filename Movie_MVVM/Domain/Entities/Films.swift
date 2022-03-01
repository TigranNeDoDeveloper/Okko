//
//  Films.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import Foundation
import RealmSwift

/// Фильм
struct Film: Decodable {
    var results: [Result]
}

final class Result: Object, Decodable {
    @objc dynamic var posterPath = String()
    @objc dynamic var overview = String()
    @objc dynamic var title = String()
    @objc dynamic var releaseDate = String()
    @objc dynamic var id = Int()
    @objc dynamic var voteAverage = Float()
    @objc dynamic var category: String?
}
