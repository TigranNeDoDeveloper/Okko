//
//  DataBaseRepository.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import Foundation

protocol RepositoryProtocol: AnyObject {
    associatedtype Entity
    func get(argumentPredicateOne: String, argumentPredicateTwo: String) -> [Entity]?
    func save(object: [Entity])
    func delete()
}

/// Абстракция над репозиторием
class DataBaseRepository<DataBaseEntity>: RepositoryProtocol {
    func get(argumentPredicateOne _: String, argumentPredicateTwo _: String) -> [DataBaseEntity]? {
        fatalError("Override required")
    }

    func save(object _: [DataBaseEntity]) {
        fatalError("Override required")
    }

    func delete() {
        fatalError("Override required")
    }
}
