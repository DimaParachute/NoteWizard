//
//  NotesListViewModel.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import Foundation
import RxSwift

protocol INotesListViewModel: AnyObject {
    
    func routeToNoteCreating(navigationController: UINavigationController)
}

final class NotesListViewModel {
    
    init() {
        
    }
}

extension NotesListViewModel: INotesListViewModel {
    
    public func routeToNoteCreating(navigationController: UINavigationController) {
        let noteCreatingAssembly = NoteCreatingAssembly()
        navigationController.pushViewController(noteCreatingAssembly.assembly(), animated: true)
    }
}
