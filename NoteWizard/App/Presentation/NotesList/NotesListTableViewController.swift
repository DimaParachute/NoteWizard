//
//  NotesListTableViewController.swift
//  NoteWizard
//
//  Created by Дмитрий Фетюхин on 23.09.2022.
//

import UIKit
import RxSwift
import RxCocoa

final class NotesListTableViewController: UITableViewController {
    
    // MARK: - Dependencies
    
    let viewModel: INotesListViewModel
    
    private lazy var rightBarButton: UIBarButtonItem = {
        let button = UIBarButtonItem(systemItem: .add)
        return button
    }()
    
    let disposeBag = DisposeBag()

    // MARK: - ViewController Lifecycle
    
    init(viewModel: INotesListViewModel) {
        self.viewModel = viewModel
        
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupView()
    }
    
    // MARK: - Private
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        title = "Notes"
        navigationItem.rightBarButtonItem = rightBarButton
    }
    
    private func bind() {
        guard let navigationController = navigationController else { return }
        rightBarButton.rx.tap
            .bind {
                self.viewModel.routeToNoteCreating(navigationController: navigationController)
            }
            .disposed(by: disposeBag)
        
        tableView.rx.itemSelected
            .subscribe { indexPath in
                print(indexPath.row)
            }
            .disposed(by: disposeBag)
    }
}

// MARK: - TableViewDataSource + TableViewDelegate

extension NotesListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
