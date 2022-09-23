//
//  NotesListAssembly.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit

final class NotesListAssembly {
    
    func assembly() -> UIViewController {
        let viewModel = NotesListViewModel()
        let view = NotesListTableViewController(viewModel: viewModel)
        return view
    }
}
