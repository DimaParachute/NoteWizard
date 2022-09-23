//
//  NoteCreatingAssembly.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit

final class NoteCreatingAssembly {
    
    func assembly() -> UIViewController {
        let viewModel = NoteCreatingViewModel()
        let view = NoteCreatingViewController(viewModel: viewModel)
        return view
    }
}
