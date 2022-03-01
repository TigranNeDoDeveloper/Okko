//
//  TitleTableViewCell.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

final class TitleTableViewCell: UITableViewCell {
    // MARK: Static Properties

    static let identifier = "TitleTableViewCell"

    // MARK: Private Visual Components

    private let titleMovie = UILabel()

    // MARK: Private Properties

    private let titleIdentifier = "Title Details"

    // MARK: Set Selected

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupTitleLabel()
    }

    // MARK: Internal Methods

    func configureCell(title: String) {
        titleMovie.text = title
    }

    // MARK: Private Methods

    private func setupTitleLabel() {
        addSubview(titleMovie)
        titleMovie.accessibilityIdentifier = titleIdentifier
        titleMovie.textAlignment = .center
        titleMovie.font = UIFont.boldSystemFont(ofSize: 18)
        titleMovie.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleMovie.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            titleMovie.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -5),
            titleMovie.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 5),
            titleMovie.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -5),
            titleMovie.heightAnchor.constraint(equalToConstant: 25),
        ])
    }
}
