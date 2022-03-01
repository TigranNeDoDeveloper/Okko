//
//  BaseCoordinator.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

/// Базовый координатор, который определяет базовые методы для остальных координаторов
class BaseCoordinator {
    private var childCoordinators: [BaseCoordinator] = []

    required init(assemblyModule _: AssemblyModuleProtocol, navController _: UINavigationController) {}

    func start() {}

    func addDependency(_ coordinator: BaseCoordinator) {
        for element in childCoordinators where element === coordinator {
            return
        }
        childCoordinators.append(coordinator)
    }

    func removeDependency(_ coordinator: BaseCoordinator?) {
        guard !childCoordinators.isEmpty,
              let coordinator = coordinator else { return }
        for (index, element) in childCoordinators.reversed().enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
    }

    func setAsRoot(_ controller: UIViewController) {
        let keyWindow = UIApplication
            .shared
            .connectedScenes
            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
            .first { $0.isKeyWindow }

        keyWindow?.rootViewController = controller
    }
}
