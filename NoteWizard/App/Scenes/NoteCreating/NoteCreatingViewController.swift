//
//  NoteCreatingViewController.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit

final class NoteCreatingViewController: UIViewController {
    
    // MARK: - Dependencies
    
    let viewModel: INoteCreatingViewModel

    // MARK: - ViewController Lifecycle
    
    init(viewModel: INoteCreatingViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
