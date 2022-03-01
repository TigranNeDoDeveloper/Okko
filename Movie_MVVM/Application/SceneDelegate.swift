//
//  SceneDelegate.swift
//  Movie_MVVM
//
//  Created by T1GER on 02.03.2022.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var applicationCoordinator: ApplicationCoordinator?

    func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        self.window = window

        applicationCoordinator = ApplicationCoordinator(
            assemblyModule: AssemblyModule(),
            navController: UINavigationController()
        )
        applicationCoordinator?.start()
    }
}
