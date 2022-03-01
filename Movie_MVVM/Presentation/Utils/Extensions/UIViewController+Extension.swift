//
//  UIViewController+Extension.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

extension UIViewController {
    func showAlert(title: String?, message: String?, actionTitle: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: actionTitle, style: .default)
        alertController.addAction(alertAction)
        present(alertController, animated: true)
    }
}
