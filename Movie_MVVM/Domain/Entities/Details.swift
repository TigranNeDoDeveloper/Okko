//
//  Details.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import Foundation
import RealmSwift

final class Details: Object, Decodable {
    @objc dynamic var posterPath = String()
    @objc dynamic var title = String()
    @objc dynamic var overview = String()
    @objc dynamic var movieID: String?
}
