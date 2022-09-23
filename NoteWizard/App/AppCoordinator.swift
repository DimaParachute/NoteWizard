//
//  AppCoordinator.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit

class AppCoordinator {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let notesListAssembly = NotesListAssembly()
        let viewController = notesListAssembly.assembly()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
