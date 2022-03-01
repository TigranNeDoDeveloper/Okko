//
//  DataProps.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

/// Пропс
enum DataProps<T> {
    case loading
    case success([T]?)
    case failure(String, String)
}
